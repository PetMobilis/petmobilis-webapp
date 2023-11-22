package com.example.javawebapp.usuario;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.*;
import com.example.javawebapp.db.Conexao;
import at.favre.lib.crypto.bcrypt.BCrypt;



// DAO = Data Access Object
public class UsuarioDao {

    // INSERT INTO usuarios ...
    public static Usuario cadastrar(String nome,String sobrenome, String email, String senha) {
        Usuario usuario = null;
        String hashSenha = BCrypt.withDefaults().hashToString(12, senha.toCharArray());
        String sql = "INSERT INTO usuarios (nome, sobrenome, email, senha) VALUES (?, ?, ?);";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection
                .prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
        ) {
            statement.setString(1, nome);
            statement.setString(2, sobrenome);
            statement.setString(3, email);
            statement.setString(4, hashSenha);
            statement.executeUpdate();

            ResultSet rs = statement.getGeneratedKeys();

            if(rs.next()) {
                usuario = new Usuario(rs.getInt(1), nome, sobrenome, email, hashSenha);
            }

            rs.close();

            return usuario;  
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    // SELECT * FROM usuarios
    public static List<Usuario> listarTodos() {
        String sql = "SELECT * FROM usuarios;";
        List<Usuario> alunos = new ArrayList<>();

        try (
            Connection connection = Conexao.getConnection();
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery(sql);
        ) {
            while(rs.next()) {
                alunos.add(
                    new Usuario(
                        rs.getInt("id"), 
                        rs.getString("nome"),
                        rs.getString("sobrenome"),  
                        rs.getString("email"), 
                        rs.getString("senha")
                    )
                );
            }
        } catch (Exception e) {
            e.printStackTrace();
            return alunos;
        } 

        return alunos;
    }

    // SELECT * FROM usuarios WHERE id = ?
    public static Usuario buscarPorId(Integer id) {
        String sql = "SELECT * FROM usuarios WHERE id = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setInt(1, id);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("email"),
                    rs.getString("senha")
                );
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    // SELECT * FROM usuarios WHERE email = ?
    public static Usuario buscarPorEmail(String email) {
        String sql = "SELECT * FROM usuarios WHERE email = ?;";

        try (
            Connection connection = Conexao.getConnection();
            PreparedStatement statement = connection.prepareStatement(sql);
        ) {
            statement.setString(1, email);
            ResultSet rs = statement.executeQuery();

            if (rs.next()) {
                return new Usuario(
                    rs.getInt("id"),
                    rs.getString("nome"),
                    rs.getString("sobrenome"),
                    rs.getString("email"),
                    rs.getString("senha")
                );
            }

            rs.close();

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }

    // Entrada = email e senha
    // Saída = existe um usuario com aquele email e senha (Boolean)
    // SELECT * FROM usuarios WHERE email = ? AND senha = ?
    public static Boolean login(String email, String senha) {
        Usuario usuario = buscarPorEmail(email);
        if (usuario != null && usuario.getSenha().equals(senha)) {
            return true;
        }
        return false;
    }

    // Entrada - email
    // Saida - se existe ou nao o usuario com aquele email
    public static Boolean existeComEmail(String email) {
        return buscarPorEmail(email) != null;
    }
}
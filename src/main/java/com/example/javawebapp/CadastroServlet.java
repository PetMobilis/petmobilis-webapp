package com.example.javawebapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 1. criar uma classe em java
// 2. extends HttpServlet
// 3. "roteamento" anotar a classe com @WebServlet definir
// name e value
// 4. sobreescrever os métodos do???  doGet, doPost, doDelete, etc
// e definir o comportamento

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
       
        final List<String> erros = new ArrayList<>();
        
        if (nome == null || nome.isBlank()) {
            erros.add("Nome deve ser preenchido");
        }

        if (email == null || email.isEmpty()) {
            erros.add("E-mail não pode ser vazio");
        }

        if (senha == null || senha.isEmpty()) {
            erros.add("Senha não pode ser vazia");
        }

        if (email != null && !EmailValidator.isValid(email)) {
            erros.add("E-mail inválido");
        }

        if (senha != null && (senha.length() < 6 || senha.length() > 20)) {
            erros.add("Senha deve ter no mínimo 6 e no máximo 20 caracteres");
        }

        if (senha != null && (senha.length() < 1 || senha.length() > 50)) {
            erros.add("Nome atingiu o tamanho máximo");
        }
        
        if (senha != null) {
            boolean temLetraMinuscula = false;
            boolean temLetraMaiuscula = false;
            boolean temDigito = false;
        
            for (char c : senha.toCharArray()) {
                if (Character.isLowerCase(c)) {
                    temLetraMinuscula = true;
                } else if (Character.isUpperCase(c)) {
                    temLetraMaiuscula = true;
                } else if (Character.isDigit(c)) {
                    temDigito = true;
                }
            }

            if (!temLetraMinuscula) {
                erros.add("A Senha deve ter uma letra minúscula");
            }

            if (!temLetraMaiuscula) {
                erros.add("A Senha deve ter uma letra maiúscula");
            }

            if (!temDigito) {
                erros.add("A Senha deve ter um número");
            }
        }

        if (erros.isEmpty()) {
            res.sendRedirect("login.jsp");
        } else {
            req.setAttribute("nome", nome);
            req.setAttribute("email", email);
            req.setAttribute("senha", senha);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("cadastro.jsp").forward(req, res);
        }
    } 
    }
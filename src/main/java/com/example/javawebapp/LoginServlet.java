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

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.sendRedirect("login.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem

        final List<String> erros = new ArrayList<>();
        
        if (email == null || email.isBlank()) {
            erros.add("E-mail não pode ser vazio");
        }

        if (senha == null || senha.isEmpty()) {
            erros.add("Senha não pode ser vazia");
        }

        if (email != null && !EmailValidator.isValid(email)) {
            erros.add("E-mail inválido");
        }

        if (erros.isEmpty()) {
            res.sendRedirect("home.html");
        } else {
            req.setAttribute("email", email);
            req.setAttribute("senha", senha);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("login.jsp").forward(req, res);
        }
    }
}

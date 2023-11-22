package com.example.javawebapp;


import java.io.IOException;


import java.util.Set;

import com.example.javawebapp.forms.LoginForm;
import com.example.javawebapp.validators.ValidatorUtil;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.validation.ConstraintViolation;

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
        req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
        // salvar no banco de dados
        // enviar um email para o admin com a mensagem

        LoginForm loginForm = new LoginForm(email, senha);
        Set<ConstraintViolation<LoginForm>> violations =  ValidatorUtil.validateObject(loginForm);

       if (violations.isEmpty()) {
            res.sendRedirect("index.jsp");
        } else {
            req.setAttribute("senha", email);
            req.setAttribute("senha", senha);
            req.setAttribute("violations", violations);
            req.getRequestDispatcher("WEB-INF/login.jsp").forward(req, res);
        }
    }
}

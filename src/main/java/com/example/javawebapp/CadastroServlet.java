package com.example.javawebapp;
import com.example.javawebapp.validators.EmailValidator;

import java.io.IOException;
import java.util.Set;

import com.example.javawebapp.forms.CadastroForm;
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

@WebServlet(name = "cadastro", value = "/cadastro")
public class CadastroServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String sobrenome = req.getParameter("sobrenome");
        String email = req.getParameter("email");
        String senha = req.getParameter("senha");
       
        CadastroForm cadastroForm = new CadastroForm(nome, sobrenome, email, senha);

        Set<ConstraintViolation<CadastroForm>> violations = ValidatorUtil.validateObject(cadastroForm);

        if (violations.isEmpty()) {
            res.sendRedirect("WEB-INF/login.jsp");
        } else {
            req.setAttribute("cadastroForm", cadastroForm);
            req.setAttribute("violations", violations);
            req.getRequestDispatcher("WEB-INF/cadastro.jsp").forward(req, res);
        }
    } 
    }
package com.example.javawebapp;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.example.javawebapp.validators.EmailValidator;

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

@WebServlet(name = "contato", value = "/contato")
public class ContatoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/contato.jsp").forward(req, res);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String nome = req.getParameter("nome");
        String email = req.getParameter("email");
        String mensagem = req.getParameter("mensagem");
       
        final List<String> erros = new ArrayList<>();

        if (email == null || email.isEmpty()) {
            erros.add("E-mail não pode ser vazio");
        }

        if (email != null && !EmailValidator.isValid(email)) {
            erros.add("E-mail inválido");
        }

        if (erros.isEmpty()) {
            res.sendRedirect("WEB-INF/contato.jsp");
        } else {
            req.setAttribute("nome", nome);
            req.setAttribute("email", email);
            req.setAttribute("mensagem", mensagem);
            req.setAttribute("erros", erros);
            req.getRequestDispatcher("WEB-INF/contato.jsp").forward(req, res);
        }
    }

    

}

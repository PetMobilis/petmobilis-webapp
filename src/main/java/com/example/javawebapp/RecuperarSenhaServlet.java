package com.example.javawebapp;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "RecuperarSenha", value = "/recuperar-senha")
public class RecuperarSenhaServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        // Aqui você pode adicionar lógica para processar o email, como enviar um link de redefinição de senha por email.
        // Você também pode salvar o email em um banco de dados, se necessário.
        System.out.println("Email informado: " + email);
        // Redirecionar para uma página de confirmação ou exibir uma mensagem de sucesso.
        res.sendRedirect("pagina-de-confirmacao.html");
    }
}

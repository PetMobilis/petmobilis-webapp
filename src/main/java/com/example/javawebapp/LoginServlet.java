package com.example.javawebapp;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "login", value = "/login")
public class LoginServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obter os parâmetros de usuário e senha do formulário
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Verificar se o usuário e a senha correspondem (substitua com sua lógica de autenticação real)
        if (username != null && username.equals("seu_usuario") && password != null && password.equals("sua_senha")) {
            // Se as credenciais estiverem corretas, redirecione para a página de sucesso (ou faça o que for necessário)
            response.sendRedirect("pagina_de_sucesso.html");
        } else {
            // Caso contrário, redirecione de volta para a página de login com uma mensagem de erro
            response.sendRedirect("login.html?erro=1");
        }
    }
}
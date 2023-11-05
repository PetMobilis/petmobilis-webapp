<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Login</title>
    <style>
        .button-spacing {
            margin-right: 50px; 
        }

        body{
          background-color:#5F6F52;
        }

        .btn1{
          background-color: #C4661F;
          border: 0;
        }

        .btn{
          background-color: #B99470;
          border: 0;
        }

        .container{
          margin-top: 5rem;
        }

        @media screen and (max-width: 600px){
          .container{
            margin: 0;
          }
        }

    </style>
</head>
<body>
   
        <div class="container h-100">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-lg-12 col-xl-11">
              <div class="card text-black" style="border-radius: 25px;background-color: #F9eBC7; border-color: #783D19;">
                <div class="card-body p-md-5">
                  <div class="row justify-content-center">
                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-3">Login</p>

                      <c:if test="${erros != null}">
                      <h3>Erros no formulário</h2>
                        <ul>
                        <c:forEach var="erro" items="${erros}">
                          <li>${erro}</li>
                        </c:forEach>
                        </ul>
                        </c:if>
      
                      <form action="login" method="post" class="mx-1 mx-md-4 ">
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input name="email" type="email" id="email'" class="form-control" placeholder="E-mail" value="${email}" />
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input name="senha" type="password" id="senha" class="form-control" placeholder="Senha" value="${senha}"/>
                          </div>
                        </div>
                      <p class="text-center">
                          <a href="recuperarSenha.html">Esqueceu sua senha?</a>
                      </p>
                        <div class="form-check d-flex justify-content-center mb-5">
                          </label>
                        </div>
      
                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                            <button type="submit" class="btn1 btn-primary btn-lg mb-3 button-spacing ml-5">Login</button>
                            <a href="cadastro.html" class="btn btn-secondary btn-lg mb-3 button-spacing">Cadastrar-se</a>
                        </div>
                        
      
                      </form>
      
                    </div>
                    
                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center justify-content-center order-1 order-lg-2">
                      <img src="imagens\logo.png"
                           class="img-fluid" alt="Sample image" style="width: 80%;" />
                  </div>
                  
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

       
    

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
</body>
</html>
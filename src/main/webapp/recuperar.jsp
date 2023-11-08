<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Recuperar Senha</title>
    <style>
.gradient-custom-2 {
/* fallback for old browsers */
background: #fccb90;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, #5F6F52, #A9B388,);

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, #5F6F52, #A9B388, #5F6F52);
}

@media (min-width: 768px) {
.gradient-form {
height: 100vh !important;
}
}
@media (min-width: 769px) {
.gradient-custom-2 {
border-top-right-radius: .3rem;
border-bottom-right-radius: .3rem;
}
}

@media screen and (max-width: 600px){

body{
  align-items: center;
}
.container{
  margin: 0;
}

.img{
  width: 50%;
  align-items: center;
  margin-bottom: 0;
}

.text-center{
  margin-top: -20;
}

form{
    align-items: center;
    margin-right: 15px;
    
}

}

    </style>
</head>
<body>
  
    <section class="h-100 gradient-form" style="background-color: #eee; ">
        <div class="container py-4 h-100">
          <div class="row d-flex justify-content-center align-items-center h-50">
            <div class="col-xl-10">
              <div class="card rounded-3 text-black">
                <div class="row g-0">
                  <div class="col-lg-6">
                    <div class="card-body mx-md-1 ml-4">
      
                      <c:if test="${erros != null}">
                        <h3>Erros no formulário</h2>
                          <ul>
                          <c:forEach var="erro" items="${erros}">
                            <li>${erro}</li>
                          </c:forEach>
                        </ul>
                      </c:if>
                      
                      <form action="recuperar" method="post">
                        
                        <p style="margin-bottom: 30px; margin-top:20px; text-align: center; font-size: 30px">Recuperar a senha</p>
      
                        <p style="margin-bottom: 20px; margin-top:40px; text-align: justify; font-size: large">Para recuperar sua senha, informe seu endereço email para que enviemos um link para redefinição da senha</p>

                        <div class="form-outline mb-3 mt-4">
                          <input name="email" type="email" id="Email" class="form-control"
                            placeholder="Email" value="${email}"/>
                        </div>
      
                        <div class="text-center">

                          <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-4 " type="submit">Enviar</button>
                          <a href="login.jsp"><button type="button" class="btn">Voltar para tela de login</button></a>
                        </div>
    
      
                      </form>
      
                    </div>
                  </div>
                  <div class="col-lg-6 d-flex align-items-center gradient-custom-2 cor">
                    <div class="text-white px-3 py-4 p-md-5 mx-md-4">

                      <div class="text-center">
                        <img src="imagens/logo.png"
                          style="width: 300px" alt="logo" >
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> </script>
</body>
</html>
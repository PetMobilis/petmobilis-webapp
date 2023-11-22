<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title><fmt:message key="cadastro.title" /></title>
    <style>
.gradient-custom-2 {
/* fallback for old browsers */
background: #fccb90;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, #5F6F52, #A9B388,);

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: radial-gradient(circle, rgba(169,179,136,1) 0%, rgba(95,111,82,1) 100%);
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
.btn:hover{
background-color: #B99470;
}

    </style>
</head>
<body style="background-color: #eee;">

    <section class="h-100 gradient-form" style="background-color: #eee;">
      <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-lg-10">
            <div class="card rounded-3 text-black">
              <div class="row g-0">
                <div class="col-lg-6">
                  <div class="card-body mx-md-1 ml-4">
    
                    
                  <c:if test="${violations != null}">
                      <h3>
                          <fmt:message key="cadastro.message" />
                          </h2>
                          <ul>
                              <c:forEach var="violation" items="${violations}">
                                  <li>${violation.propertyPath} ${violation.message}</li>
                              </c:forEach>
                          </ul>
                  </c:if>
                    
                    <form action="cadastro" method="post">
                      <h2 class="text-center"><fmt:message key="cadastro.title2" /></h2>
    
                      <div class="form-group row">
                          <div class="col">
                            <input 
                             name="nome" type="text" class="form-control" value="${CadastroForm.nome}" placeholder="<fmt:message key="cadastro.name" />">
                          </div>
                          <div class="col">
                            <input name="sobrenome" type="text" class="form-control" value="${CadastroForm.sobrenome}" placeholder="<fmt:message key="cadastro.surname" />">
                          </div>
                      </div>
                      
                      <div class="form-group">
                        <input name="email" type="email" id="Email" class="form-control" value="${CadastroForm.email}" placeholder="<fmt:message key="cadastro.email" />"/>
                      </div>
    
                      <div class="form-group">
                        <input name="senha" type="password" id="senha" class="form-control" value="${CadastroForm.senha}" placeholder="<fmt:message key="cadastro.password" />"/>
                      </div>
                      
                      <p style="font-size: 12px;"><fmt:message key="cadastro.important" /></p>
    
                      <p style="font-size: 12px;"><fmt:message key="cadastro.accept" /><a href="termosDeServico.html"><fmt:message key="cadastro.accept2" /></a></p>
    
                      <div class="text-center">
                        <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-4" type="submit"><fmt:message key="cadastro.s_button" /></button>
                        <a href="login"><button type="button" class="btn"><fmt:message key="cadastro.l_button" /></button></a>
                      </div>
                    </form>
                  </div>
                </div>
                <div class="col-lg-6 d-flex align-items-center gradient-custom-2 cor">
                  <div class="text-white px-3 py-4 p-md-5 mx-md-4">
                    <div class="text-center">
                      <img src="imagens/logo.png" style="max-width: 100%;" alt="logo">
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
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title><fmt:message key="login.title" /></title>
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
    </style>
</head>
<body>
  
    <section class="h-100 gradient-form" style="background-color: #eee;">
        <div class="container py-5 h-50">
          <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
              <div class="card rounded-3 text-black">
                <div class="row g-0">
                  <div class="col-lg-6">
                    <div class="card-body mx-md-1 ml-4">
                     
                      <c:if test="${violations != null}">
                        <h3>
                            <fmt:message key="login.message" />
                            </h2>
                            <ul>
                                <c:forEach var="violation" items="${violations}">
                                    <li>${violation.propertyPath} ${violation.message}</li>
                                </c:forEach>
                            </ul>
                    </c:if>
      
                      <form action="login" method="post">
                        <p style="margin-bottom: 20px; margin-top:40px; text-align: center; font-size: large"><fmt:message key="login.title2" /></p>
      
                        <div class="form-outline mb-4">
                          <input name="email" type="email" id="email" class="form-control" value="${email}" placeholder="<fmt:message key="login.email" />" />
                        </div>
      
                        <div class="form-outline mb-4">
                          <input name="senha" type="password" id="senha" class="form-control" value="${senha}" placeholder="<fmt:message key="login.password" />" />
                        </div>
                      
      
                        <div class="text-center pt-1 mb-5 pb-1">

                          <div class="form-check" style="display: inline; margin-right: 30px;">
                            <input class="form-check-input" type="checkbox" value="" id="form1Example3" checked />
                            <label class="form-check-label" for="form1Example3"><fmt:message key="login.checked" /></label>
                          </div>

                        <a class="text-muted" href="recuperar"><fmt:message key="login.forget" /></a>

                       <button class="btn btn-primary btn-block fa-lg gradient-custom-2 mb-2 mt-4" type="submit"><fmt:message key="login.enter" /></button>
                        
                        </div>
      
                        <div class="d-flex align-items-center justify-content-center pb-4">
                          <p class="mb-0 me-2 mr-1"><fmt:message key="login.c_message" /></p>
                          <a href="cadastro"><button type="button" class="btn btn-outline-danger"><fmt:message key="login.c_button" /></button></a>
                        </div>
      
                      </form>
      
                    </div>
                  </div>
                  <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
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
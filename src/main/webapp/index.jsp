<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Página Inicial</title>
</head>

<style>
body {
    background-color: #A9B388;
}
.botao1 {
    background-color: #A9B388;
    color: white;
    border-color: #5F6F52;
}
.botao1:hover {
    background: #5F6F52;
}
.botao2 {
    background-color: #5F6F52;
    color: white;
    border-color: black;
}
.botao2:hover {
    background: #A9B388;
}
.bg {
    background-color: #5F6F52;
    color: white;
}
.position-relative {
    border-radius: 25px;
}
.bg-light {
    background-color: #5F6F52;
}
</style>

<body>
<div >
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow" style="border-bottom-left-radius: 15px;border-bottom-right-radius: 15px">
        <img class="my-0 mr-md-auto font-weight-normal ml-2" src="imagens/default_transparent_1000x1000.png" style="width: 65px" alt="logo">
        <nav class="my-2 my-md-0 mr-md-3">
            <a class="p-2 text-dark" href="termosDeServico.html">Termos de Serviço</a>
            <a class="p-2 text-dark" href="contato">Contato</a>
            <a class="botao1 btn btn-outline-primary mr-2" href="cadastro">Cadastrar</a>
            <a class="botao2 btn btn-outline-primary" href="login">Login</a>
            <a class="botao2 btn btn-outline-primary" href="logout">Logout</a>
        </nav>
    </div>
    <div class="container">
    <div class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
        <div class="col-md-10 p-lg-5 mx-auto my-5">
            <h1 class="display-4 font-weight-normal">O que é a PetMobilis</h1>
            <p class="lead font-weight-normal">É um aplicativo de viagem que visa oferecer para você e seu animal de estimação uma forma rápida e simples de se locomover. </p>
            <a class="btn btn-outline-secondary" href="#">Saiba mais</a>
        </div>
        <div class="product-device box-shadow d-none d-md-block"></div>
        <div class="product-device product-device-2 box-shadow d-none d-md-block"></div>
        <div class="container">
           
        </div>
    </div>
    </div>
    <footer class="mb-0 bg-white" style="border-top-left-radius: 15px;border-top-right-radius: 15px; margin-top: 1rem;">
        <div class="row" style="margin-left: 2rem;">
            <div class="col-12 col-md mt-4">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="d-block mb-2">
                    <circle cx="12" cy="12" r="10"></circle>
                    <line x1="14.31" y1="8" x2="20.05" y2="17.94"></line>
                    <line x1="9.69" y1="8" x2="21.17" y2="8"></line>
                    <line x1="7.38" y1="12" x2="13.12" y2="2.06"></line>
                    <line x1="9.69" y1="16" x2="3.95" y2="6.06"></line>
                    <line x1="14.31" y1="16" x2="2.83" y2="16"></line>
                    <line x1="16.62" y1="12" x2="10.88" y2="21.94"></line>
                </svg>
                <small class="d-block mb-3 text-muted">&copy; 2017-2018</small>
            </div>
            <div class="col-6 col-md mt-4">
                <h5>Features</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Cool stuff</a></li>
                    <li><a class="text-muted" href="#">Random feature</a></li>
                    <li><a class="text-muted" href="#">Team feature</a></li>
              
                </ul>
            </div>
            <div class="col-6 col-md mt-4">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Resource</a></li>
                    <li><a class="text-muted" href="#">Resource name</a></li>
              
                </ul>
            </div>
            <div class="col-6 col-md mt-4">
                <h5>Resources</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Business</a></li>
                    <li><a class="text-muted" href="#">Education</a></li>
               
                </ul>
            </div>
            <div class="col-6 col-md mt-4">
                <h5>About</h5>
                <ul class="list-unstyled text-small">
                    <li><a class="text-muted" href="#">Team</a></li>
                    <li><a class="text-muted" href="#">Locations</a></li>
                   
                </ul>
            </div>
        </div>
    </footer>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script>
    window.jQuery || document.write('<script src="../../assets/js/vendor/jquery-slim.min.js"><\/script>')
</script>
<script src="../../assets/js/vendor/popper.min.js"></script>
<script src="../../dist/js/bootstrap.min.js"></script>
<script src="../../assets/js/vendor/holder.min.js"></script>
<script>
    Holder.addTheme('thumb', {
        bg: '#55595c',
        fg: '#eceeef',
        text: 'Thumbnail'
    });
</script>
</body>
</html>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <title>Cadastro</title>
</head>
<style>
  .button-spacing {
      margin-right: 50px; 
  }

  body{
    background-color:#5F6F52;
  }

  .btn{
    background-color: #C4661F;
    border: 0;
  }

  .container{
    margin-top: 4rem;
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
      
                      <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4">Cadastro</p>
                      <form class="mx-1 mx-md-4" action="cadastro" method="post">
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input name="nome" type="text" id="nome" class="form-control" placeholder="Nome"/>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input name="email" type="email" id="email" class="form-control" placeholder="E-mail"/>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-4">
                          <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                          <div class="form-outline flex-fill mb-0">
                            <input name="senha" type="password" id="senha" class="form-control" placeholder="Senha"/>
                          </div>
                        </div>
      
                        <div class="d-flex flex-row align-items-center mb-3">
                          <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                         
                        </div>
                                                    <!--Colocar o href de termos de serviço-->
                                Ao clicar em Registrar-se, você aceita nosso <a href="termosDeServico.html">Termos de serviço</a>
                                <br>
                            </label>
                        <br>
                        <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                          <button type="submit" class="btn btn-primary btn-lg">Registrar-se</button>
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
        
      </section>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>

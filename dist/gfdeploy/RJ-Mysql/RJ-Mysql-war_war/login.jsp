<%-- 
    Document   : login
    Created on : 15-06-2016, 2:31:21
    Author     : froen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>RJ Comic Shop</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/round-about.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href=index.jsp>RJ SHOP</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li>
                        <a href=products.jsp>Productos</a>
                    </li>
                    <li>
                        <a href=about.jsp>Quienes somos</a>
                    </li>
                    <li>
                        <a href=contact.jsp>Contacto</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    
    <!-- /.formulario de login -->
    
    <form class="form-inline">
  <div class="form-group">
    <label class="sr-only" for="exampleInputEmail3">Nombre de usuario</label>
    <input type="email" class="form-control" id="NombreUsuario" placeholder="Nombre de usuario">
  </div>
  <div class="form-group">
    <label class="sr-only" for="exampleInputPassword3">Contraseña</label>
    <input type="password" class="form-control" id="Contraseña" placeholder="Contraseña">
  </div>
  <div class="checkbox">
    <label>
      <input type="checkbox"> Administrador
    </label>
  </div>
  <button type="submit" class="btn btn-primary">Entrar</button>
</form>
<%-- 
    Document   : index
    Created on : 29-abr-2016, 15:33:10
    Author     : alubd
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

    <!-- Custom CSS -->
    <link href="css/full-slider.css" rel="stylesheet">

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
                        <a href=about.jsp>Quienes Somos</a>
                    </li>
                    <li>
                        <a href=contact.jsp>Contacto</a>
                    </li>
                </ul>     
                    <ul class="nav navbar-nav navbar-right">
                   <% 
                       if (session.getAttribute("autentificado") != null ){
                    if ( (Boolean)session.getAttribute("autentificado") == true){
                        if((Integer.parseInt(session.getAttribute("tipo").toString())) ==1 ){ %>
                            <li>
                            <a href=admin.jsp>Admin</a>
                            </li>
 
                     <%   } %>
                    
                        <li>
                            <a href=menuPerfilUsuario.jsp>Perfil</a>
                        </li>
                    <%
                            }
                       } else{
                      %>  
                            <li>
                            <a href=admin.jsp>Admin</a>
                            </li>
 
                              <li>
                            <a href=menuPerfilUsuario.jsp>Perfil</a>
                        </li>
                      
<!--                      <form action="Autentificarse.do" method="post">                           -->
                        <li class="dropdown"></li>
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                          Identifícate <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu">
                            <center>
                                <font color="gray">Nombre de usuario:</font>
                                <input class="form-control" type="text" name="txtNombreUsuario">
                                <font color="gray">Contraseña:</font>
                                <input class="form-control" type="password" name="txtContrasena">
                                <input type="submit" class="btn btn-default navbar-btn" value="Entrar">
                                <li class="divider"></li>
                                <font color="gray">¿Todavía no eres miembro?</font>
                                <a href="registrarse.jsp">Registrate ahora</a> 
                            </center>
                        </ul>
                            
                            
                       <% } %>   
                    <!--</form>-->
                    </ul>
                     
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Full Page Image Background Carousel Header -->
    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for Slides -->
        <div class="carousel-inner">
            <div class="item active">
                <!-- Set the first background image using inline CSS below. -->
                <div class="fill" style="background-image:url('https://scontent.fgru3-1.fna.fbcdn.net/v/t35.0-12/13148349_232965383741858_1350593074_o.jpg?oh=bc58c202210ba557633cfb1ccf8abd2e&oe=57871EF1');" ></div>
                <div class="carousel-caption">
                    <h2>1</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the second background image using inline CSS below. -->
                <div class="fill" style="background-image:url('https://scontent.fgru3-1.fna.fbcdn.net/v/l/t35.0-12/13120721_233035553734841_941434195_o.jpg?oh=315c07b5eba7988cee6dedf34e4a19c4&oe=57872C59');"></div>
                <div class="carousel-caption">
                    <h2>2</h2>
                </div>
            </div>
            <div class="item">
                <!-- Set the third background image using inline CSS below. -->
                <div class="fill" style="background-image:url('https://scontent.fgru3-1.fna.fbcdn.net/v/t35.0-12/13120808_233041507067579_1419628472_o.jpg?oh=758fc79193a4193ac9e2e14c75b878fa&oe=57864424');"></div>
                <div class="carousel-caption">
                    <h2>3</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>

    </header>

    <!-- Page Content -->
    <div class="container">
        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; RJ Comic Shop 2016</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>


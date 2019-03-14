<%-- 
    Document   : agregarComic
    Created on : 14-06-2016, 17:26:14
    Author     : froen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList,java.sql.*" %>
<%@page import = "Entity.Comics" %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>RJ Administrador</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-homepage.css" rel="stylesheet">

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
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container">
        
         <!-- Page Heading/Breadcrumbs -->
        <div class="row" >
            <div class="col-lg-12" margin:100px>
                <h1 class="page-header">Gestion de Comics
                
                </h1>
                <ol class="breadcrumb">
                    <li><a href="index.jsp">Inicio</a></li>
                    <li><a href="admin.jsp">Gestion de Comics</a></li>
                    <li class="active">Editar Comic</li>
                </ol>
            </div>
        </div>
        <!-- /.row -->
        
        
            <div class="col-md-3">
               
                <div class="list-group">
                    <a href="agregarComic.jsp" class="list-group-item">Agregar Comic</a>
                    <a href="buscarComic.jsp" class="list-group-item active">Editar Comic</a>
                    <a href="eliminarComic.jsp" class="list-group-item">Eliminar Comic</a>
                     <a href="ListarComics.do" class="list-group-item">Listar Comics</a>
                </div>
                
                
                
            </div>

    
     
    <!-- formulario agregar 
               
                <!-- === BEGIN CONTENT === -->
                   
                                <!-- Register Box -->
                                <div class="col-md-7">
                                    <form class="signup-page" action="EditarComic.do" method="post">
                                        <h2 class="signup-header">Editar Comic</h2>
                                        <% 
                                            Comics c = (Comics)request.getAttribute("c");
                                            
                                            if ( c == null ) {
                                            %>  <div class="alert alert-danger" role="alert">
                                                    <strong>Error:</strong> El codigo ingresado no existe 
                                                </div>
                                            <%} else { 
                                            %>
                                                
                                                <label>Codigo</label>
                                                <input class="form-control margin-bottom-20" readonly="readonly" type="text" name="txtID" value="<%=c.getComId()%>" >
                                                <label>Titulo</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtTitulo" value="<%=c.getComTitulo()%>">
                                                <label>Editorial</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtEditorial" value="<%=c.getComEditorial()%>">
                                                <label>Nombre Heroe</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtNheroe" value="<%=c.getComNombreheroe()%>">
                                                <label>Numero de titulo</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtNtitulo" value="<%=c.getComNumerotitulo()%>">
                                                <label>Descripcion</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtDescripcion" value="<%=c.getComDescripcion()%>">
                                                <label>Precio</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtPrecio" value="<%=c.getComPrecio()%>">
                                                <label>Cantidad</label>
                                                <input class="form-control margin-bottom-20" type="text" name="txtCantidad" value="<%=c.getComStock()%>">
                                                <label>Imagen</label>
                                                <input type="file" name="txtImagen" value="<%=c.getComImagen()%>">

                                                <br><br/>

                                                <button class="btn btn-primary" type="submit">Editar</button>
                                                <button class="btn btn-primary" type="button" onClick=" window.location.href='buscarComic.jsp'">Volver</button>

                                                
                                             <%
                                            }
                                        
                                        %>   
                                </form>
                   
                                </div>
                                <!-- End Register Box -->
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
            <!-- === END CONTENT === -->
            </div>

        </div>
        
         <!-- Footer -->
         <div class="container">
         <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; RJ Comic Shop 2016</p>
                </div>
            </div>
            <!-- /.row -->
        </footer>
         </div>
    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>
      

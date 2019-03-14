<%-- 
    Document   : editarPerfilUsuario
    Created on : 15-jul-2016, 16:54:38
    Author     : xHirasawa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.util.ArrayList,java.sql.*" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>RJ Shop</title>

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



            <!-- formulario agregar 
                       
            <!-- === BEGIN CONTENT === -->

            <!-- Register Box -->
            <div class="col-md-7">
                <form class="signup-page" action="ActualizarDatosUsuario.do" method="post">
                    <h2 class="signup-header" >Actualizar datos</h2>

                    <%
                        String mensaje = (String) request.getAttribute("mensaje");
                        boolean bandera = false;
                        if((mensaje == "Datos actualizados exitosamente.") || (mensaje=="El usuario indicado no existe.")){
                            bandera = true;
                        }
                    %>
                    
                    <% if((bandera==true)&&(mensaje!=null)){   %>
                    <div class="alert alert-info col-md-9">
                        <h1><%=mensaje%></h1>  
                        <p> Espere por favor, será redireccionado en 3 segundos.</p>
                    </div>
                    <% } %>
                    <div class="col-md-">
                    <script type="text/javascript">
                        function redireccionar(){
                          window.location.href='menuPerfilUsuario.jsp';
                        }
                        if(<%=bandera%>==true){
                        setTimeout ("redireccionar()", 3000);
                        }//tiempo expresado en milisegundos
                        </script>     
                    </div>
                        <br><br/>
                    <div class="col-md-7">
                        <label>Nombre de usuario</label>
                        <input class="form-control margin-bottom-20" type="text" name="txtNombreUsuario">    
                        <label>Direccion</label>
                        <input class="form-control margin-bottom-20" type="text" name="txtDireccion">
                        <label>Email</label>
                        <input class="form-control margin-bottom-20" type="text" name="txtEmail">
                        <label>Ciudad</label>
                        <input class="form-control margin-bottom-20" type="text" name="txtCiudad">
                        <br></br>
                        <button class="btn btn-primary" type="submit">Actualizar</button>
                        <button class="btn btn-primary" type="reset">Limpiar</button>
                        <button class="btn btn-primary" type="button" onClick=" window.location.href = 'menuPerfilUsuario.jsp'">Volver</button>
                    </div>    
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
    </footer>
</div>     
</div>
<!-- /.container -->

<!-- jQuery -->
<script src="js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="js/bootstrap.min.js"></script>

</body>


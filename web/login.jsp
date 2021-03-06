<html>
<head>
<title>Login</title>
<link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="resources/css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="resources/js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
 </head>
<body>
	<div class="header">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="header-left">
                        <div class="logo">
                            <a href="index.jsp"><img src="resources/images/logo.png" alt="" /></a>
                        </div>
                        <div class="menu">
                            <a class="toggleMenu" href="#"><img src="resources/images/nav.png" alt="" /></a>
                            <ul class="nav" id="nav">
                                <li><a href="shop.jsp">Cat?logo</a></li>
                                <li><a href="team.jsp">Equipo de trabajo</a></li>
                                <li><a href="company.jsp">Compa?ia</a></li>
                                <li><a href="contact.jsp">Contacto</a></li>
                                <div class="clear"></div>
                            </ul>
                            <script type="text/javascript" src="resources/js/responsive-nav.js"></script>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="header_right">
                        <!-- start search-->
                        <div class="search-box">
                            <div id="sb-search" class="sb-search">
                                <form>
                                    <input class="sb-search-input" placeholder="Ingrese termino a buscar..."
                                        type="search" name="search" id="search">
                                    <input class="sb-search-submit" type="submit" value="">
                                    <span class="sb-icon-search"> </span>
                                </form>
                            </div>
                        </div>
                        <!----search-scripts---->
                        <script src="resources/js/classie.js"></script>
                        <script src="resources/js/uisearch.js"></script>
                        <script>
                            new UISearch(document.getElementById('sb-search'));
                        </script>
                        <!----//search-scripts---->
                        <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c1" href="#"> </a>
                                <ul class="sub-icon1 list">
                                    <div class="product_control_buttons">
                                        <a href="#"><img src="resources/images/edit.png" alt="" /></a>
                                        <a href="#"><img src="resources/images/close_edit.png" alt="" /></a>
                                    </div>
                                    <div class="clear"></div>
                                    <li class="list_img"><img src="resources/images/1.jpg" alt="" /></li>
                                    <li class="list_desc">
                                        <h4><a href="#">Uzumaki</a></h4><span class="actual">1 x
                                            $12.00</span>
                                    </li>
                                    <div class="login_buttons">
                                        <div class="check_button"><a href="checkout.jsp">Check out</a></div>
                                        <div class="login_button"><a href="login.jsp">Login</a></div>
                                        <div class="clear"></div>
                                    </div>
                                    <div class="clear"></div>
                                </ul>
                            </li>
                        </ul>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
     <div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="col-md-6">
				 <div class="login-page">
					<h4 class="title">Registrate con nosotros</h4>
                                        <p>Si quieres comprar con nosotros da clic en el boton de crear cuenta para que te registres y poder disfrutar de todo nuestro cat?logo de libros, es super f?cil y gratis.<br><br><br><br></p>
					<div class="button1">
					   <a href="register.jsp"><input type="submit" name="Submit" value="Crear nueva cuenta"></a>
					 </div>
					 <div class="clear"></div>
				  </div>
				</div>
				<div class="col-md-6">
				 <div class="login-title">
	           		<h4 class="title">Iniciar sesi?n</h4>
					<div id="loginbox" class="loginbox">
						<form action="ValidaUsuario" method="POST" name="login" id="login-form">
						  <fieldset class="input">
						    <p id="login-form-username">
						      <label for="modlgn_username">Email</label>
						      <input id="modlgn_username" type="text" name="email" class="inputbox" size="18" autocomplete="off">
						    </p>
						    <p id="login-form-password">
						      <label for="modlgn_passwd">Contrase?a</label>
						      <input id="modlgn_passwd" type="password" name="password" class="inputbox" size="18" autocomplete="off">
						    </p>
                                                    <br><button class="button" type="submit" value="Iniciar">Iniciar</button><div class="clear"></div>
						  </fieldset>
						</form>
					</div>
			      </div>
				 <div class="clear"></div>
			  </div>
			</div>
		  </div>
	  </div>
	  
    
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <ul class="footer_box">
                        <h4>Libros</h4>
                        <li><a href="#">Para Mombres</a></li>
                        <li><a href="#">Para Mujeres</a></li>
                        <li><a href="#">Infantil</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="footer_box">
                        <h4>Acerca de</h4>
                        <li><a href="#">Patrocinios</a></li>
                        <li><a href="#">Equipo de trabajo</a></li>
                        <li><a href="#">Cat?logo</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="footer_box">
                        <h4>Atenci??n al cliente</h4>
                        <li><a href="#">Contacto</a></li>
                        <li><a href="#">Seguimiento de orden de compra</a></li>
                        <li><a href="#">Devoluciones</a></li>
                        <li><a href="#">Garant?a</a></li>
                    </ul>
                </div>
                <div class="col-md-3">
                    <ul class="footer_box">
                        <h4>Redes Sociales</h4>
                        <ul class="social">
                            <li class="facebook"><a href="#"><span> </span></a></li>
                            <li class="twitter"><a href="#"><span> </span></a></li>
                            <li class="instagram"><a href="#"><span> </span></a></li>
                            <li class="pinterest"><a href="#"><span> </span></a></li>
                            <li class="youtube"><a href="#"><span> </span></a></li>
                        </ul>
                    </ul>
                </div>
            </div>

        </div>
    </div>
    ${mensaje}
</body>	
</html>
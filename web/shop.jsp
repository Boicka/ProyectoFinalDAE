<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <head>
        <title>Librería ACME</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="resources/css/style.css" rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script
        type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <script src="resources/js/jquery.min.js"></script>
        <link rel="stylesheet" href="resources/css/fwslider.css" media="all">
        <script src="resources/js/jquery-ui.min.js"></script>
        <script src="resources/js/fwslider.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(".dropdown img.flag").addClass("flagvisibility");

                $(".dropdown dt a").click(function () {
                    $(".dropdown dd ul").toggle();
                });

                $(".dropdown dd ul li a").click(function () {
                    var text = $(this).jsp();
                    $(".dropdown dt a span").jsp(text);
                    $(".dropdown dd ul").hide();
                    $("#result").jsp("Selected value is: " + getSelectedValue("sample"));
                });

                function getSelectedValue(id) {
                    return $("#" + id).find("dt a span.value").jsp();
                }

                $(document).bind('click', function (e) {
                    var $clicked = $(e.target);
                    if (!$clicked.parents().hasClass("dropdown"))
                        $(".dropdown dd ul").hide();
                });


                $("#flagSwitcher").click(function () {
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
                                    <li><a href="shop.jsp">Catálogo</a></li>
                                    <li><a href="team.jsp">Equipo de trabajo</a></li>
                                    <li><a href="company.jsp">Compañía</a></li>
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
                    <div class="row shop_box-top" id="books">
                        <script>
                            function handleResponse(response) {
                                for (var i = 0; i < 4; i++) {
                                    var item = response.items[i];
                                    // in production code, item.text should have the HTML entities escaped.
                                    document.getElementById("books").innerHTML += '<div class="col-md-3 shop_box">' + 
                                                    '<a href="single.jsp?=id">'+
                                                    '<img src="' + item.volumeInfo.imageLinks.thumbnail + '" class="img-responsive" width="310" height="410" alt="'+ item.volumeInfo.title+'">'+
                                                    '<span class="new-box">'+
                                                    '<span class="new-label">Nuevo</span>'+
                                                    '</span>'+
                                                    '<span class="sale-box">'+
                                                    '<span class="sale-label">Oferta</span>'+
                                                    '</span>'+
                                                    '<div class="shop_desc">'+
                                                    '<h3><a href="#">'+ item.volumeInfo.title + '</a></h3>'+
                                                    '<p>'+ item.volumeInfo.publisher + '</p>'+
                                                    '<span class="actual">$'+ Math.floor(Math.random() * 500).toString() + ' MXN</span><br>'+
                                                    '<ul class="buttons">'+
                                                    '<li class="cart"><a href="#">Añadir al carrito</a></li>'+
                                                    '<li class="shop_btn"><a href="#">Leer más...</a></li>'+
                                                    '<div class="clear"> </div>'+
                                                    '</ul>'+
                                                    '</div>'+
                                                    '</a>'+
                                                    '</div>'+
                                                    '</div>';
                                }
                            }
                        </script>
                        <script src="https://www.googleapis.com/books/v1/volumes?q=harry+potter&callback=handleResponse"></script>
                    </div>
                    <div id="books2" class="row">
                        <script>
                            function handleResponse(response) {
                                for (var i = 4; i < 8; i++) {
                                    var item = response.items[i];
                                    // in production code, item.text should have the HTML entities escaped.
                                    document.getElementById("books2").innerHTML += '<div class="col-md-3 shop_box">' + 
                                                    '<a href="single.jsp?=id">'+
                                                    '<img src="' + item.volumeInfo.imageLinks.thumbnail + '" class="img-responsive" width="310" height="410" alt="'+ item.volumeInfo.title+'">'+
                                                    '<span class="new-box">'+
                                                    '<span class="new-label">Nuevo</span>'+
                                                    '</span>'+
                                                    '<span class="sale-box">'+
                                                    '<span class="sale-label">Oferta</span>'+
                                                    '</span>'+
                                                    '<div class="shop_desc">'+
                                                    '<h3><a href="#">'+ item.volumeInfo.title + '</a></h3>'+
                                                    '<p>'+ item.volumeInfo.publisher + '</p>'+
                                                    '<span class="actual">$'+ Math.floor(Math.random() * 500).toString() + ' MXN</span><br>'+
                                                    '<ul class="buttons">'+
                                                    '<li class="cart"><a href="#">Añadir al carrito</a></li>'+
                                                    '<li class="shop_btn"><a href="#">Leer más...</a></li>'+
                                                    '<div class="clear"> </div>'+
                                                    '</ul>'+
                                                    '</div>'+
                                                    '</a>'+
                                                    '</div>'+
                                                    '</div>';
                                }
                            }
                        </script>
                        <script src="https://www.googleapis.com/books/v1/volumes?q=java&callback=handleResponse"></script>
                    </div>
                    <div id="books3" class="row">
                        <script>
                            function handleResponse(response) {
                                for (var i = 0; i < 4; i++) {
                                    var item = response.items[i];
                                    // in production code, item.text should have the HTML entities escaped.
                                    document.getElementById("books2").innerHTML += '<div class="col-md-3 shop_box">' + 
                                                    '<a href="single.jsp?=id">'+
                                                    '<img src="' + item.volumeInfo.imageLinks.thumbnail + '" class="img-responsive" width="310" height="410" alt="'+ item.volumeInfo.title+'">'+
                                                    '<span class="new-box">'+
                                                    '<span class="new-label">Nuevo</span>'+
                                                    '</span>'+
                                                    '<span class="sale-box">'+
                                                    '<span class="sale-label">Oferta</span>'+
                                                    '</span>'+
                                                    '<div class="shop_desc">'+
                                                    '<h3><a href="#">'+ item.volumeInfo.title + '</a></h3>'+
                                                    '<p>'+ item.volumeInfo.publisher + '</p>'+
                                                    '<span class="actual">$'+ Math.floor(Math.random() * 500).toString() + ' MXN</span><br>'+
                                                    '<ul class="buttons">'+
                                                    '<li class="cart"><a href="#">Añadir al carrito</a></li>'+
                                                    '<li class="shop_btn"><a href="#">Leer más...</a></li>'+
                                                    '<div class="clear"> </div>'+
                                                    '</ul>'+
                                                    '</div>'+
                                                    '</a>'+
                                                    '</div>'+
                                                    '</div>';
                                }
                            }
                        </script>
                        <script src="https://www.googleapis.com/books/v1/volumes?q=python&callback=handleResponse"></script>
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
                            <li><a href="#">Catálogo</a></li>
                        </ul>
                    </div>
                    <div class="col-md-3">
                        <ul class="footer_box">
                            <h4>Atención al cliente</h4>
                            <li><a href="#">Contacto</a></li>
                            <li><a href="#">Seguimiento de orden de compra</a></li>
                            <li><a href="#">Devoluciones</a></li>
                            <li><a href="#">Garantía</a></li>
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
    </body>

</html>
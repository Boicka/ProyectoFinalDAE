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
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });

            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
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
                            <a href="index.html"><img src="resources/images/logo.png" alt="" /></a>
                        </div>
                        <div class="menu">
                            <a class="toggleMenu" href="#"><img src="resources/images/nav.png" alt="" /></a>
                            <ul class="nav" id="nav">
                                <li><a href="shop.html">Catálogo</a></li>
                                <li><a href="team.html">Equipo de trabajo</a></li>
                                <li><a href="company.html">Compañía</a></li>
                                <li><a href="contact.html">Contacto</a></li>
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
                                        <h4><a href="#">velit esse molestie</a></h4><span class="actual">1 x
                                            $12.00</span>
                                    </li>
                                    <div class="login_buttons">
                                        <div class="check_button"><a href="checkout.html">Check out</a></div>
                                        <div class="login_button"><a href="login.html">Login</a></div>
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
                <div class="row shop_box-top">
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic5.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <span class="sale-box">
                                <span class="sale-label">Sale!</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="reducedfrom">$66.00</span>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic6.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic7.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <span class="sale-box">
                                <span class="sale-label">Sale!</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="reducedfrom">$66.00</span>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic8.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="reducedfrom">$66.00</span>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                </div>
                <div class="row">
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic9.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic10.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <span class="sale-box">
                                <span class="sale-label">Sale!</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic11.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="reducedfrom">$66.00</span>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a></div>
                    <div class="col-md-3 shop_box"><a href="single.html">
                            <img src="resources/images/pic12.jpg" class="img-responsive" alt="" />
                            <span class="new-box">
                                <span class="new-label">New</span>
                            </span>
                            <span class="sale-box">
                                <span class="sale-label">Sale!</span>
                            </span>
                            <div class="shop_desc">
                                <h3><a href="#">aliquam volutp</a></h3>
                                <p>Lorem ipsum consectetuer adipiscing </p>
                                <span class="reducedfrom">$66.00</span>
                                <span class="actual">$12.00</span><br>
                                <ul class="buttons">
                                    <li class="cart"><a href="#">Add To Cart</a></li>
                                    <li class="shop_btn"><a href="#">Read More</a></li>
                                    <div class="clear"> </div>
                                </ul>
                            </div>
                        </a>
                    </div>
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
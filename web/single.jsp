<%@page import="com.google.gson.JsonObject"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.HttpURLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
            JsonParser jsonParser = new JsonParser();
            URL url = new URL("https://www.googleapis.com/books/v1/volumes/"+ request.getParameter("id"));
            //System.out.println(url);
            HttpURLConnection conn = (HttpURLConnection) url.openConnection();
            conn.setRequestMethod("GET");
            conn.setRequestProperty("Accept", "application/json");
            if (conn.getResponseCode() != 200) {
                //si la respuesta del servidor es distinta al codigo 200 lanzaremos una Exception
                throw new RuntimeException("Failed : HTTP error code : " + conn.getResponseCode());
            }
            BufferedReader bra = new BufferedReader(new InputStreamReader((conn.getInputStream())));
            //creamos un StringBuilder para almacenar la respuesta del web service
            StringBuilder sb = new StringBuilder();
            int cp;
            while ((cp = bra.read()) != -1) {
                sb.append((char) cp);
            }
            bra.close();
            //en la cadena output almacenamos toda la respuesta del servidor
            String output = sb.toString();
//        output= output.replace("\\u003cp\\u003eHarry Connors is at Penn State and in love with Sarah, a fellow student. They marry shortly after they are graduated. He gets a job with a contract agency of the Atomic Energy Commission involved in research programs related to atom bomb radiation effects, trigger devices and other secret projects. Harry´s work takes him to New Mexico, Philadelphia Naval Air Station and Indian Springs Air Force Base, Nevada.\\u003cp\\u003e On the day that Harry disappears, a test atom bomb is detonated, an unmanned plane flown near the mushroom cloud to collect data explodes and a top-secret plan goes missing. Harry is never found and the government´s investigation circumstantially determines that Harry was an agent of the Soviet Union.\\u003cp\\u003e Sarah, pregnant, returns to Pennsylvania. Four decades later, Harry´s son, Adam, sets out on an intriguing mission to find out what happened to his father. Along the way, with the help of his fiancee and two of his father´s fraternity brothers, he finds an aged member of the Russian spy machine, ex coworkers and a host of some very odd folks.\\u003c/p\\u003e", "hola");
          //  output = output.replace("\\u003cp\\u003e", "").replace("\\u003c/p\\u003e", "");
            //output = output.toString();
            JsonObject myJson = (JsonObject) jsonParser.parse(output);
            //String thumbnail = myJson.get("volumeInfo").getAsJsonObject().get("imageLinks").getAsJsonObject().get("thumbnail").getAsString();
            String description = myJson.get("volumeInfo").getAsJsonObject().get("description").getAsString();
        %>
<html>
    <head>
        <title>Librería ACME</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="resources/css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="resources/css/style.css" rel='stylesheet' type='text/css' />
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
    <body onload="getUrl()">
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
                                            <div class="check_button"><a href="checkout.jsp">Ver carrito</a></div>
                                            <div class="login_button"><a href="login.jsp">Acceder</a></div>
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
                    <div class="row">
                        <div class="col-md-9 single_left">
                            <div class="single_image">
                                <ul id="etalage">
                                    <li>
                                        <a href="">
                                            <img class="etalage_thumb_image" src="images/3.jpg" />
                                            
                                            <img class="etalage_source_image" src="images/3.jpg" />
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <!-- end product_slider -->
                            <div class="single_right">
                                <h3>Descripción</h3>
                                <p class="m_10" id="description"><%= description %></p>
                                <h3>Editorial</h3>
                                <p class="m_10">XD</p>
                                <div class="btn_form">
                                    <form>
                                        <input type="submit" value="Comprar" title="">
                                    </form>
                                </div>
                            </div>
                            <div class="clear"> </div>
                        </div>
                        <div class="col-md-3">
                            <div class="box-info-product">
                                <p class="price2">$130.25</p>
                                <ul class="prosuct-qty">
                                    <span>Quantity:</span>
                                    <select>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                        <option>6</option>
                                    </select>
                                </ul>
                                <button type="submit" name="Submit" class="exclusive">
                                    <span>Añadir al carrito</span>
                                </button>
                            </div>
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
                            <h4>AtenciÃ³n al cliente</h4>
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

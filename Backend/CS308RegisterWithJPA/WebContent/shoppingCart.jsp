<!DOCTYPE html>
<html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
<!-- Deniz CSS and JS-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>

<!-- Template CSS and JS-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
        <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/slick.css">
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link type="text/css" rel="stylesheet" href="css/style.css">
   <script src="js/search.js"></script>
<!-- Berkin CSS and JS-->
<link rel="stylesheet" href="css/register.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link href="css/shoppingCart.css" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/shoppingCart.js"></script>
</head>
  <header id="site-header">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container" style="margin-right: 22%;">
			<a class="navbar-brand" href="index.jsp"> <img src="img/logo.png" width="34"
				height="34" class="d-inline-block align-top" alt=""> Tech
				Market
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNav" aria-controls="navbarNav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mr-auto">
					                    <li class="dropdown"><a class="nav-link" href="Home_HTML">Action
                        <span class="sr-only">(current)</span>
                    </a>

                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML">Multiplayer <span class="sr-only">(current)</span></a>

					</li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> Sports <span
                            class="sr-only">(current)</span></a>

                    </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> FPS <span class="sr-only">(current)</span></a>

                   </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML"> RPG <span
                            class="sr-only">(current)</span></a>
                   </li>
                    <li class="dropdown" style="margin-left: 5%;"><a
                            class="nav-link" href="Home_HTML">Strategy<span class="sr-only">(current)</span></a>
					<li style="margin-left: 5%; margin-top: 5px;"><input id="search"  type="text" placeholder="Search.."  onkeydown="if (event.keyCode == 13) { search(); }"></li>
					<li class="dropdown" style="margin-left: 5%;"><a
						class="fa fa-user" style="font-size: 34px; color: grey;"></a>

						<div class="dropdown-content">
							<a href="login.jsp">Login</a> 
							<a href="register.jsp">Register</a> 
							<a href="myOrders.jsp">My Orders</a> 
							<a href="#account">Account</a> 
						</div></li>
					<a class="fa fa-shopping-cart" href="shoppingCart.jsp" style="font-size: 34px; color: grey; margin-left: 10%;"></a>
				</ul>
			</div>
		</div>
	</nav>
 	<div class="container">
            <h1 class= "cart">Shopping cart</h1>
    </div>
</header>
    <div class="main">
    <div class="container">
        <section id="shopping_cart" class ="products" > 
        	<%
// 						session = request.getSession();
// 						session.getAttribute("cart");
// 						if (session.getAttribute("cart") == null) {
// 							HashMap<String, String> cart_items = new HashMap<String, String>();
// 							session.setAttribute("cart", cart_items);
// 						} else {
// 							Object object = session.getAttribute("cart");
// 							HashMap<String, String> cart_items = (HashMap<String, String>) object;
// 							electronicdevicelist.add(temp);
// 							session.removeAttribute("cart");
// 							session.setAttribute("cart", electronicdevicelist);
// 						}
			%>
            <article class="product">
                <header>
                    <a class="remove">
                        <img src="./img/product01.png" alt="">
                        <h3>Remove product</h3>
                    </a>
                </header>
                <div class="content_info">
                    <h1 class= "product_name">Counter-Strike</h1>
					Play the world's number 1 online action game. Engage in an incredibly realistic brand of terrorist warfare in this wildly popular team-based game. Ally with teammates to complete strategic missions. Take out enemy sites. Rescue hostages. Your role affects your team's success. Your team's success affects your role.
                </div>
                <footer class="content">
                    <span class="qt-minus">-</span>
                    <span class="qt">2</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price"> 29.98$  </h2>
                    <h2 class="price"> 14.99$ </h2>
                </footer>
            </article>
            <article class="product">
                <header>
                    <a class="remove"><img src="./img/product02.png" alt=""><h3>Remove product</h3></a>
                </header>
                <div class="content_info">
                    <h1 class= "product_name">Team Fortress Classic</h1>
					One of the most popular online action games of all time, Team Fortress Classic features over nine character classes -- from Medic to Spy to Demolition Man -- enlisted in a unique style of online team warfare. Each character class possesses unique weapons, items, and abilities, as teams compete online in a variety of game play modes.
                </div>
                <footer class="content">
                    <span class="qt-minus">-</span>
                    <span class="qt">1</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price"> 79.99$ </h2>
                    <h2 class="price"> 79.99$ </h2>
                </footer>
            </article>
            <article class="product">
                <header>
                    <a class="remove">
                        <img src="./img/product04.png" alt="">
                        <h3>Remove product</h3>
                    </a>
                </header>
                <div class="content_info">
                    <h1 class= "product_name">Deathmatch Classic</h1>
					Enjoy fast-paced multiplayer gaming with Deathmatch Classic (a.k.a. DMC). Valve's tribute to the work of id software, DMC invites players to grab their rocket launchers and put their reflexes to the test in a collection of futuristic settings.
                </div>
                <footer class="content">
                    <span class="qt-minus">-</span>
                    <span class="qt">3</span>
                    <span class="qt-plus">+</span>
                    <h2 class="full-price">53.99$</h2>
                    <h2 class="price"> 17.99$ </h2>
                </footer>
            </article>
        </section>
    </div>
</div>
    <footer id="site-footer">
        <div class="container clearfix">
            <div class="left">
                <h2 class="subtotal">Subtotal: <span>163.96</span>$</h2>
                <h3 class="tax">Taxes (5%): <span>8.2</span>$</h3>
                <h3 class="shipping">Shipping: <span>5.00</span>$</h3>
            </div>
            <div class="right">
                <h1 class="total">Total: <span>177.16</span>$</h1>
				<form action="placeorder" method="post">
                	<a class="btn_check">Checkout</a>
				</form>
            </div>
        </div>
    </footer>
</html>
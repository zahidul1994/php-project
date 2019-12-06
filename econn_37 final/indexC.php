<?php
require __DIR__ . '/vendor/autoload.php';
use App\testClass;
use App\inc\testInc;
use App\src\testSrc;
use App\Database;
?>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Home :: w3layouts</title>
<link href="assets/css/bootstrap3.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="assets/css/eshop.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Eshop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<!-- for bootstrap working -->
	<script type="text/javascript" src="assets/js/bootstrap-3.1.1.min.js"></script>
<!-- //for bootstrap working -->
<!-- cart -->
	<script src="assets/js/simpleCart.min.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen" />
</head>
<body>
<?php require "partials/topbar.php"; ?>
			<div class="banner-top">
		<div class="container">
				<nav class="navbar navbar-default" role="navigation">
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
	        </button>
				<div class="logo">
					<h1><a href="index.php"><span>E</span> -Shop</a></h1>
				</div>
	    </div>
	    <!--/.navbar-header-->
	
<?php require "partials/mainmenu.php"; ?>
	    <!--/.navbar-collapse-->
	</nav>
	<!--/.navbar-->
</div>
</div>
<!--carousel start-->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
        <div class="item active">
            <img src="assets/images/slide%20(1).jpg" alt="Los Angeles" style="width:100%; height:320px">
        </div>

        <div class="item">
            <img src="assets/images/slide%20(2).jpg" alt="Chicago" style="width:100%;height:320px ">
        </div>

        <div class="item">
            <img src="assets/images/slide%20(3).jpg" alt="New york" style="width:100%;height:320px">
        </div>
        <div class="item">
            <img src="assets/images/slide%20(4).jpg" alt="Chicago" style="width:100%;height:320px ">
        </div>
        <div class="item">
            <img src="assets/images/slide%20(5).jpg"  style="width:100%;height:320px ">
        </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
        <span class="sr-only">Next</span>
    </a>
</div>
<!--carousel end-->

		<!-- content-section-starts-here -->
		<div class="container">
			<div class="main-content">
				<div class="online-strip">
					<div class="col-md-4 follow-us">
						<h3>follow us : <a class="twitter" href="#"></a><a class="facebook" href="#"></a></h3>
					</div>
					<div class="col-md-4 shipping-grid">
						<div class="shipping">
							<img src="assets/images/shipping.png" alt="" />
						</div>
						<div class="shipping-text">
							<h3>Free Shipping</h3>
							<p>on orders over $ 199</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="col-md-4 online-order">
						<p>Order online</p>
						<h3>Tel:999 4567 8902</h3>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="products-grid">
				<header>
				<h3 class="head text-center">Hot Items</h3>
				<?php 
			//$conn = new database;
			//$id = 1;
			//$conn->table_name = "products";
			//$selectQuery = $conn->get_all_where('hot = ' . $id);

			//foreach ($selectQuery as $values) {
				//var_dump($values);
				//exit;


			?>
				
				</header>
					<div class="col-md-4 product simpleCart_shelfItem text-center">
					<?php 
				$conn = new Database();
				$conn->table_name = "products";
				$pagesize = 12;
				$pageindex = isset($_GET['index']) ? $_GET['index'] : 1;
				$pageindex = ($pageindex - 1) * $pagesize;
				$totalRecords = $conn->for_pagination();
				$totalPages = ceil($totalRecords / $pagesize);
				$result = $conn->get_all_where('hot = ' . $id);
						
						//$totalRecords = $result->num_rows;
						//$totalPages = ceil($totalRecords/$pagesize);
					
						//var_dump($result);
				foreach ($result as $key => $single_product) {
					echo '
						<a href="single.php"> < img src = "assets/images/productimages/' . $single_product['imagename'] . '" class =
					"img-responsive" alt = "" / > < / a >
						< div class 
					=
					"mask" >
						< a href = "single.php" > Quick View < / a >
						< / div >
						< a class 
					=
					"product_name" href = "single.php" > < span class 
					=
					"item_name" > ' . $single_product[' name '] . ' < / span > < / a >
						< p > < a class 
					=
					"item_add" href = "#" > < i > < / i > < span class 
					=
					"item_price" > ' . $single_product[' sprice '] . ' < / span > < / a > < / p >
						< / div > ';
				}
				?>		
					
				

					
		<div class="other-products">
		<div class="container">
			<h3 class="like text-center">Featured Collection</h3>        			
				     <ul id="flexiselDemo3">
						<li><a href="single.php"><img src="assets/images/l1.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php">perfectly simple</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$759</span></a></p>
							</div>
						</li>
						<li><a href="single.php"><img src="assets/images/l2.jpg" class="img-responsive" alt="" /></a>						
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php">praising pain</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$699</span></a></p>
							</div>
						</li>
						<li><a href="single.php"><img src="assets/images/l3.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php">Neque porro</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$329</span></a></p>
							</div>
						</li>
						<li><a href="single.php"><img src="assets/images/l4.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php">equal blame</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$499</span></a></p>
							</div>
						</li>
						<li><a href="single.php"><img src="assets/images/l5.jpg" class="img-responsive" alt="" /></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php">perfectly simple</a>
							<p><a class="item_add" href="#"><i></i> <span class=" item_price">$649</span></a></p>
							</div>
						</li>
				     </ul>
				    <script type="text/javascript">
					 $(window).load(function() {
						$("#flexiselDemo3").flexisel({
							visibleItems: 4,
							animationSpeed: 1000,
							autoPlay: true,
							autoPlaySpeed: 3000,    		
							pauseOnHover: true,
							enableResponsiveBreakpoints: true,
					    	responsiveBreakpoints: { 
					    		portrait: { 
					    			changePoint:480,
					    			visibleItems: 1
					    		}, 
					    		landscape: { 
					    			changePoint:640,
					    			visibleItems: 2
					    		},
					    		tablet: { 
					    			changePoint:768,
					    			visibleItems: 3
					    		}
					    	}
					    });
					    
					});
				   </script>
				   <script type="text/javascript" src="assets/js/jquery.flexisel.js"></script>
				   </div>
				   </div>
		<!-- content-section-ends-here -->
		<div class="news-letter">
			<div class="container">
				<div class="join">
					<h6>JOIN OUR MAILING LIST</h6>
					<div class="sub-left-right">
						<form>
							<input type="text" value="Enter Your Email Here" onfocus="this.value = ' ';" onblur="if (this.value == ' ') {this.value = ' Enter Your Email Here';}" />
							<input type="submit" value="SUBSCRIBE" />
						</form>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
		<?php require "partials/footer.php"; ?>
</body>
</html>
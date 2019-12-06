<?php
require __DIR__ . '/vendor/autoload.php';
use App\Database;
use App\testClass;
use App\inc\testInc;
use App\src\testSrc;
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
<title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Products :: w3layouts</title>
<link href="assets/css/bootstrap3.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="assets/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="assets/css/eshop.css" rel="stylesheet" type="text/css" media="all" />
<link href="assets/css/component.css" rel='stylesheet' type='text/css' />
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
    <script src="assets/js/simpleCart.js"> </script>
<!-- cart -->
<link rel="stylesheet" href="assets/css/flexslider.css" type="text/css" media="screen" />
    <style>
        .product_image img{
            height: 250px;
            overflow-y: hidden;
        }
    </style>
</head>
<body>
<?php require "partials/topbar.php"; ?>
		<div class="inner-banner">
		<div class="container">
			<div class="banner-top inner-head">
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
		</div>
		
		<!-- content-section-starts -->
	<div class="container">
	   <div class="products-page">
			<div class="products">
				<div class="product-listy">
					<h2>our Products</h2>
					<ul class="product-list">
					<!-- category area start -->
					
					<?php 

				$conn = new Database();
				$conn->table_name = "categories";
				$catresultQuery = $conn->get_all();
				foreach ($catresultQuery as $key => $valc) {
				// var_dump($catresultQuery);
				// exit;
					?>
						 <li><a  href="category.php?catid= <?php echo $valc['name'] ?>"><?php echo $valc['name']; ?></a></li>
				<?php 
		} ?>
					</ul>
				</div>
				<!-- category area end -->
				<div class="latest-bis">
					<img src="assets/images/l4.jpg" class="img-responsive" alt="" />
					<div class="offer">
						<p>40%</p>
						<small>Top Offer</small>
					</div>
				</div> 	
				<div class="tags">
				    	<h4 class="tag_head">Tags Widget</h4>
				         <ul class="tags_links">
							<li><a href="#">Kitesurf</a></li>
							<li><a href="#">Super</a></li>
							<li><a href="#">Duper</a></li>
							<li><a href="#">Theme</a></li>
							<li><a href="#">Men</a></li>
							<li><a href="#">Women</a></li>
							<li><a href="#">Equipment</a></li>
							<li><a href="#">Best</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Men</a></li>
							<li><a href="#">Apparel</a></li>
							<li><a href="#">Super</a></li>
							<li><a href="#">Duper</a></li>
							<li><a href="#">Theme</a></li>
							<li><a href="#">Responsive</a></li>
					        <li><a href="#">Women</a></li>
							<li><a href="#">Equipment</a></li>
						</ul>
					
				     </div>

			</div>
			<div class="new-product">
				<div class="new-product-top">
					<ul class="product-top-list">
						<li><a href="index.php">Home</a>&nbsp;<span>&gt;</span></li>
						<li><span class="act">Best Sales</span>&nbsp;</li>
					</ul>
					<p class="back"><a href="index.php">Back to Previous</a></p>
					<div class="clearfix"></div>
				</div>
				<div class="mens-toolbar">
                 <div class="sort">
               	   <div class="sort-by">
			            <label>Sort By</label>
			            <select>
			                            <option value="">
			                    Position                </option>
			                            <option value="">
			                    Name                </option>
			                            <option value="">
			                    Price                </option>
			            </select>
			            <a href=""><img src="assets/images/arrow2.gif" alt="" class="v-middle"></a>
	                   </div>
	    		     </div>
					 <?php 
					$conn = new Database();
					$conn->table_name = "products";
					$pagesize = 12;
					$pageindex = isset($_GET['index']) ? $_GET['index'] : '1';
					$totalRecords = $conn->for_pagination();
					$totalPages = ceil($totalRecords / $pagesize);
					?>	
					     
		    	        <ul class="women_pagenation">
					     <li>Page:</li>
						 <li class=""><a class="<?php if ($pageindex == 1) echo 'btn disabled'; ?>" href="products.php?index=<?php echo $pageindex - 1; ?>">Previous</a></li>
					     <?php

									if ($totalPages > 1) {

										for ($i = 1; $i <= $totalPages; $i++) {
											if (abs($pageindex - $i) <= 2) {
												?>
    					<li class=" <?php if ($pageindex == $i) echo "active"; ?>"><a href="products.php?index=<?php echo $i; ?>"><?php echo $i ?></a></li>
    					<?php

							}
						}
					}
					?>
						<li class="" ><a class="<?php if ($pageindex == $totalPages) echo "btn disabled"; ?>" href="products.php?index=<?php echo $pageindex + 1; ?>">Next</a></li>
				  	    </ul>
	               		 <div class="clearfix"></div>		
			        </div>
			        <div id="cbp-vm" class="cbp-vm-switcher cbp-vm-view-grid">
					<div class="cbp-vm-options">
						<a href="#" class="cbp-vm-icon cbp-vm-grid cbp-vm-selected" data-view="cbp-vm-view-grid" title="grid">Grid View</a>
						<a href="#" class="cbp-vm-icon cbp-vm-list" data-view="cbp-vm-view-list" title="list">List View</a>
					</div>
					<div class="pages">   
        	 <div class="limiter visible-desktop">
               <label>Show</label>
                  <select>
                            <option value="" selected="selected">
                    9                </option>
                            <option value="">
                    15                </option>
                            <option value="">
                    30                </option>
                  </select> per page        
               </div>
       	   </div>
					<div class="clearfix"></div>
					<ul>
						<?php 
					$conn = new Database();
					$conn->table_name = "products";
					$pagesize = 12;
					$pageindex = isset($_GET['index']) ? $_GET['index'] : 1;
					$pageindex = ($pageindex - 1) * $pagesize;
					$totalRecords = $conn->for_pagination();
					$totalPages = ceil($totalRecords / $pagesize);
					$result = $conn->get_all_paged($pageindex, $pagesize);
						
						//$totalRecords = $result->num_rows;
						//$totalPages = ceil($totalRecords/$pagesize);
					
						//var_dump($result);
					foreach ($result as $key => $single_product) {
						echo '<li><a class="cbp-vm-image" href="single.php?productid=' . $single_product['id'] . '"><div class="simpleCart_shelfItem"> <div class="view view-first"> <div class="inner_content clearfix"><div class="product_image"><img src="assets/images/productimages/' . $single_product['imagename'] . '" class="img-responsive" alt=""/><div class="mask"> <div class="info">Quick View</div></div><div class="product_container"> <div class="cart-left"> <p class="title"><span class="item_name">' . $single_product['name'] . '</span></p></div><div class="pricey"><span class="item_price">' . $single_product['sprice'] . '</span></div><div class="clearfix"></div><span class="item_number">' . $single_product['id'] . '</span></div></div></div></div></a>

<div class="cbp-vm-details">' . mb_substr($single_product['details'], 0, 60) . '</div><a class="cbp-vm-icon cbp-vm-add item_add" href="#">Add to cart</a></div></li>';
					}
					?>						
					</ul>
				</div>
				<script src="assets/js/cbpViewModeSwitch.js" type="text/javascript"></script>
                <script src="assets/js/classie.js" type="text/javascript"></script>
			</div>
			<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
   </div>
   <!-- content-section-ends -->
		<div class="other-products">
		<div class="container">
			<h3 class="like text-center">Featured Collection</h3>        	<ul id="flexiselDemo3">
			<?php
		$id1 = 1;
		$conn->table_name = "products";
		$raw_query = "SELECT products.*, images.* FROM products INNER JOIN images ON products.id=images.id where products.new='$id1'";
		$select = $conn->rawQuery($raw_query);
		foreach ($select as $key => $values) {
			?>
						<li><a href="single.php?productid= <?php echo $values['product_id'] ?>"><img src="assets/images/productimages/<?php echo $values['imagename'] ?>" class="img-responsive"/></a>
							<div class="product liked-product simpleCart_shelfItem">
							<a class="like_name" href="single.php?productid= <?php echo $values['product_id'] ?>"><?php echo $values['name'] ?></a>
							<p><a class="item_add" href="single.php?productid= <?php echo $values['product_id'] ?>"><i></i> <span class=" item_price"><?php echo $values['pprice'] ?></span></a></p>
							</div>
						</li>
			<?php 
	} ?>
				     </ul>
				    <script type="text/javascript">
					 $(document).ready(function() {
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
							<input type="text" value="Enter Your Email Here" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Email Here';}" />
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
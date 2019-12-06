<?php
require __DIR__ . '/vendor/autoload.php';
use App\Database;

if (isset($_GET['productid'])) {
    $productid = $_GET['productid'];
    $conn = new Database();
    $conn->table_name = "products";
    $product = $conn->get($productid);
    $productImages = $conn->rawQuery("select * from images where product_id='$productid'");


    //var_dump($product);
    //exit;
} else {
    //invalid url
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Eshop a Flat E-Commerce Bootstrap Responsive Website Template | Single :: w3layouts</title>
    <link href="assets/css/bootstrap3.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery11.min.js"></script>
    <!-- Custom Theme files -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
                        <h1><a href="index.html"><span>E</span> -Shop</a></h1>
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
						 <li><a  href="category.php?catid= <?php echo $valc['id'] ?>"><?php echo $valc['name']; ?></a></li>
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
            <div class="col-md-5 zoom-grid">
                <div class="flexslider">
                    <ul class="slides">
                        <?php
                        //$productImages
                        while ($row = $productImages->fetch_assoc()) {
                            echo '<li data-thumb="assets/images/productimages/' . $row['imagename'] . '"><div class="thumb-image"><img src="assets/images/productimages/' . $row['imagename'] . '" data-imagezoom="true" class="img-responsive" alt="" /></div></li>';
                        }


                        ?>

                    </ul>
                </div>
            </div>
            <div class="col-md-7 dress-info">
                <div class="dress-name">
                    <h3><?php echo $product['name']; ?></h3>
                    <span>Tk <?php echo $product['sprice']; ?></span>
                    <div class="clearfix"></div>
                    <?php
                    echo $product['details'];

                    ?>

                </div>
                <div class="span span1">
                    <p class="left">FABRIC ORIGIN</p>
                    <p class="right">Japan</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">MADE IN</p>
                    <p class="right">China</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">COLOR</p>
                    <p class="right">White</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span4">
                    <p class="left">SIZE</p>
                    <p class="right"><span class="selection-box"><select class="domains valid" name="domains">
										   <option>M</option>
										   <option>L</option>
										   <option>XL</option>
										   <option>FS</option>
										   <option>S</option>
									   </select></span></p>
                    <div class="clearfix"></div>
                </div>
                <div class="purchase">
                    <a href="#">Purchase Now</a>
                    <div class="social-icons">
                        <ul>
                            <li><a class="facebook1" href="#"></a></li>
                            <li><a class="twitter1" href="#"></a></li>
                            <li><a class="googleplus1" href="#"></a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <script src="assets/js/imagezoom.js"></script>
                <!-- FlexSlider -->
                <script defer src="assets/js/jquery.flexslider.js"></script>
                <script>
                    // Can also be used with $(document).ready()
                    $(window).load(function() {
                        $('.flexslider').flexslider({
                            animation: "slide",
                            controlNav: "thumbnails"
                        });
                    });
                </script>
            </div>
            <div class="clearfix"></div>
            <div class="reviews-tabs">
                <!-- Main component for a primary marketing message or call to action -->
                <ul class="nav nav-tabs responsive hidden-xs hidden-sm" id="myTab">
                    <li class="test-class active"><a class="deco-none misc-class" href="#how-to"> More Information</a></li>
                    <li class="test-class"><a href="#features">Specifications</a></li>
                    <li class="test-class"><a class="deco-none" href="#source">Reviews (7)</a></li>
                </ul>

                <div class="tab-content responsive hidden-xs hidden-sm">
                    <div class="tab-pane active" id="how-to">
                        <p class="tab-text">Maecenas mauris velit, consequat sit amet feugiat rit, elit vitaeert scelerisque elementum, turpis nisl accumsan ipsum Lorem Ipsum is simply dummy text of the printing and typesetting industry. and scrambled it to make a type specimen book. It has survived Auction your website on Flippa and you'll get the best price from serious buyers, dedicated support and a much better deal than you'll find with any website broker. Sell your site today I need a twitter bootstrap 3.0 theme for the full-calendar plugin. it would be great if the theme includes the add event; remove event, show event details. this must be RESPONSIVE and works on mobile devices. Also, I've seen so many bootstrap themes that comes up with the fullcalendar plugin. However these . </p>
                    </div>
                    <div class="tab-pane" id="features">
                        <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum nibh urna, euismod ut ornare non, volutpat vel tortor. Integer laoreet placerat suscipit. Sed sodales scelerisque commodo. Nam porta cursus lectus. Proin nunc erat, gravida a facilisis quis, ornare id lectus. Proin consectetur nibh quis urna gravida mollis.This tab has icon in consectetur adipiscing eliconse consectetur adipiscing elit. Vestibulum nibh urna, ctetur adipiscing elit. Vestibulum nibh urna, t.consectetur adipiscing elit. Vestibulum nibh urna,  Vestibulum nibh urna,it.</p>
                        <p class="tab-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                            sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>
                    <div class="tab-pane" id="source">
                        <div class="response">
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>MARCH 21, 2015</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>MARCH 26, 2054</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>MAY 25, 2015</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>FEB 13, 2015</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>JAN 28, 2015</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>APR 18, 2015</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                            <div class="media response-info">
                                <div class="media-left response-text-left">
                                    <a href="#">
                                        <img class="media-object" src="assets/images/icon1.png" alt="" />
                                    </a>
                                    <h5><a href="#">Username</a></h5>
                                </div>
                                <div class="media-body response-text-right">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,There are many variations of passages of Lorem Ipsum available,
                                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                                    <ul>
                                        <li>DEC 25, 2014</li>
                                        <li><a href="single.html">Reply</a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="other-products products-grid">
    <div class="container">
        <header>
            <h3 class="like text-center">Related Products</h3>
        </header>
        <div class="col-md-4 product simpleCart_shelfItem text-center">
            <a href="single.html"><img src="assets/images/p1.jpg" alt="" /></a>
            <div class="mask">
                <a href="single.html">Quick View</a>
            </div>
            <a class="product_name" href="single.html">Sed ut perspiciatis</a>
            <p><a class="item_add" href="#"><i></i> <span class="item_price">$329</span></a></p>
        </div>
        <div class="col-md-4 product simpleCart_shelfItem text-center">
            <a href="single.html"><img src="assets/images/p2.jpg" alt="" /></a>
            <div class="mask">
                <a href="single.html">Quick View</a>
            </div>
            <a class="product_name" href="single.html">great explorer</a>
            <p><a class="item_add" href="#"><i></i> <span class="item_price">$599.8</span></a></p>
        </div>
        <div class="col-md-4 product simpleCart_shelfItem text-center">
            <a href="single.html"><img src="assets/images/p3.jpg" alt="" /></a>
            <div class="mask">
                <a href="single.html">Quick View</a>
            </div>
            <a class="product_name" href="single.html">similique sunt</a>
            <p><a class="item_add" href="#"><i></i> <span class="item_price">$359.6</span></a></p>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<!-- content-section-ends -->
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
<div class="footer">
    <div class="container">
        <div class="footer_top">
            <div class="span_of_4">
                <div class="col-md-3 span1_of_4">
                    <h4>Shop</h4>
                    <ul class="f_nav">
                        <li><a href="#">new arrivals</a></li>
                        <li><a href="#">men</a></li>
                        <li><a href="#">women</a></li>
                        <li><a href="#">accessories</a></li>
                        <li><a href="#">kids</a></li>
                        <li><a href="#">brands</a></li>
                        <li><a href="#">trends</a></li>
                        <li><a href="#">sale</a></li>
                        <li><a href="#">style videos</a></li>
                    </ul>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>help</h4>
                    <ul class="f_nav">
                        <li><a href="#">frequently asked  questions</a></li>
                        <li><a href="#">men</a></li>
                        <li><a href="#">women</a></li>
                        <li><a href="#">accessories</a></li>
                        <li><a href="#">kids</a></li>
                        <li><a href="#">brands</a></li>
                    </ul>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>account</h4>
                    <ul class="f_nav">
                        <li><a href="account.html">login</a></li>
                        <li><a href="register.html">create an account</a></li>
                        <li><a href="#">create wishlist</a></li>
                        <li><a href="checkout.html">my shopping bag</a></li>
                        <li><a href="#">brands</a></li>
                        <li><a href="#">create wishlist</a></li>
                    </ul>
                </div>
                <div class="col-md-3 span1_of_4">
                    <h4>popular</h4>
                    <ul class="f_nav">
                        <li><a href="#">new arrivals</a></li>
                        <li><a href="#">men</a></li>
                        <li><a href="#">women</a></li>
                        <li><a href="#">accessories</a></li>
                        <li><a href="#">kids</a></li>
                        <li><a href="#">brands</a></li>
                        <li><a href="#">trends</a></li>
                        <li><a href="#">sale</a></li>
                        <li><a href="#">style videos</a></li>
                        <li><a href="#">login</a></li>
                        <li><a href="#">brands</a></li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="cards text-center">
            <img src="assets/images/cards.jpg" alt="" />
        </div>
        <div class="copyright text-center">
            <p>© 2015 Eshop. All Rights Reserved | Design by   <a href="http://w3layouts.com">  W3layouts</a></p>
        </div>
    </div>
</div>
<script src="assets/js/responsive-tabs.js"></script>
<script type="text/javascript">
    $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
    } );

    $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
    } );

    ( function( $ ) {
        // Test for making sure event are maintained
        $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
        } );
        fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
    } )( jQuery );

</script>

</body>
</html>
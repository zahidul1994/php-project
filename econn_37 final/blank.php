<!DOCTYPE html>
<html>
<head>
    <title>Checkout</title>
    <link href="assets/css/bootstrap3.css" rel='stylesheet' type='text/css' />
    <link href="assets/css/cartStyle.css" rel='stylesheet' type='text/css' />
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="assets/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <link href="assets/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/php; charset=utf-8" />
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
        .sc{
            float: right;
            background: #816263;
            margin-top: 10px;
        }
        .nc{
            margin-top: 100px;
        }
    </style>
</head>
<body>
<?php require "partials/topbar.php";?>
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

                <?php require "partials/mainmenu.php";?>
                <!--/.navbar-collapse-->
            </nav>
            <!--/.navbar-->
        </div>
    </div>
</div>
<div class="container">
<!--    content will be given here-->
</div>
<?php require "partials/footer.php";?>
</body>
</html>
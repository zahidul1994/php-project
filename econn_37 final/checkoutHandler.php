<?php

require __DIR__ . '/vendor/autoload.php';
use App\Session;
use App\inc\checkUser;
if(!checkUser::isUser()){
    header("location: account.php");
}
$userinfo = Session::getSessionData('userinfo');

?>
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
    <h3>Fill Necessary Information for checkout and submit</h3>
    <form action="">
        <div class="row">
            <div class="form-group col-md-3">
                <label for="payment_method">Payment Mathod</label>
                <select class="form-control" name="payment_method" id="payment_method">
                    <option value="1">Cash on delivery</option>
                    <option value="2">বিকাশ</option>
                    <option value="3">নগদ</option>
                    <option value="4">রকেট</option>
                </select>
            </div>
            <div class="form-group col-md-3">
                <label for="trx_id">Transaction Id</label>
                <input type="text" class="form-control" id="trx_id">
            </div>
            <div class="form-group col-md-3">
                <label for="coupon">Coupon</label>
                <input type="text" class="form-control" id="coupon">
            </div>
            <div class="form-group col-md-3">
                <label for="comment">Comments</label>
                <textarea name="comment" id="comment" class="form-control" placeholder ="Any Extra Information"></textarea>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6">
                <h3>Shipping Info</h3>
                <div class="form-group">
                    <label for="saddress">Address</label>
                    <input type="text" class="form-control" id="saddress">
                </div>
                <div class="form-group">
                    <label for="saddress_thana">Thana</label>
                    <input type="text" class="form-control" id="saddress_thana">
                </div>
                <div class="form-group">
                    <label for="saddress_dist">District</label>
                    <input type="text" class="form-control" id="saddress_dist">
                </div>
                <div class="form-group">
                    <label for="saddress_div">Division</label>
                    <input type="text" class="form-control" id="saddress_div">
                </div>
                <div class="form-group">
                    <label for="saddress_country">Country</label>
                    <input type="text" class="form-control" id="saddress_country">
                </div>
                <div class="form-group">
                    <input type="checkbox" val="1" id="ship_bill_same_btn">
                    <label for="ship_bill_same_btn">Use this shipping Address for billing</label>
                </div>

            </div>
            <div class="col-md-6">
                <h3>Billing Info</h3>
                <div class="form-group">
                    <label for="baddress">Address</label>
                    <input type="text" class="form-control" id="baddress">
                </div>
                <div class="form-group">
                    <label for="baddress_thana">Thana</label>
                    <input type="text" class="form-control" id="baddress_thana">
                </div>
                <div class="form-group">
                    <label for="baddress_dist">District</label>
                    <input type="text" class="form-control" id="baddress_dist">
                </div>
                <div class="form-group">
                    <label for="baddress_div">Division</label>
                    <input type="text" class="form-control" id="baddress_div">
                </div>
                <div class="form-group">
                    <label for="baddress_country">Country</label>
                    <input type="text" class="form-control" id="baddress_country">
                </div>
            </div>
        </div>

    </form>
    <div><a href="javascript:;" class="simpleCart_checkout btn btn-primary form-control">checkout</a></div>
</div>
<!--    content will be given here-->
</div>
<?php require "partials/footer.php";?>
<script>
$(document).ready(function () {
    $("#ship_bill_same_btn").change(function(){
        if($(this).prop('checked')){
            $("#baddress").val($("#saddress").val());
            
        }
        else{
            $("#baddress").val('')
        }
        
    })
});
</script>
</body>
</html>
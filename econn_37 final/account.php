<?php
require __DIR__ . '/vendor/autoload.php';
use App\Database;
use App\Session;
if(Session::getSessionData('userloggedin')){
    if(Session::getSessionData('userloggedin') == true){
        header("location: index.php");
    }
}
if(isset($_POST['submitBtn'])){
    $conn = new Database();
    $em = $conn->db->escape_string($_POST['email']);
    $pwd = $_POST['pass'];
    $select = "select * from users where email='$em'";
    //echo $select; exit;
    $selectResult = $conn->db->query($select);
    if($selectResult->num_rows == 1){
        $row = $selectResult->fetch_assoc();
        //var_dump($row);exit;
        if($row['role'] != 2){
//stop and show error message, email ok but not admin
//echo "not 1"; exit;
        }
        else{
            if(password_verify($pwd,$row['password'])){
                $data = [
                    'id'=>$row['id'],
                    'username'=>$row['name'],
                    'email'=>$row['email'],
                ];
                //print_r($data);exit;
//user is admin and valid
                Session::setSessionData('userloggedin',true);
                Session::setSessionData('userinfo',$data);
                header("location: index.php");
            }
            else{
                //email ok but wrong password
                //echo "pass problem"; exit;
            }
        }

    }
}
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
    <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
        <h3>REGISTERED CUSTOMERS</h3>
        <p>If you have an account with us, please log in.</p>
        <form method="post">
            <div>
                <span>Email Address<label>*</label></span>
                <input type="text" name="email">
            </div>
            <div>
                <span>Password<label>*</label></span>
                <input type="password" name="pass">
            </div>
            <a class="forgot" href="#">Forgot Your Password?</a>
            <input type="submit" value="Login" name="submitBtn">
        </form>
    </div>
    <div class="clearfix"> </div>
</div>
<?php require "partials/footer.php";?>
</body>
</html>
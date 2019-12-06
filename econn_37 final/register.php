<?php
require __DIR__ . '/vendor/autoload.php';
use App\Database;
$message = array();
if(isset($_POST['subBtn'])){

    $error = false;
    $conn = new Database();
    $conn->table_name = "users";
    $fn= $_POST['fname'];
    $ln= $_POST['lname'];
    $email= $_POST['email'];
    $password1= $_POST['pass1'];
    $password2= $_POST['pass2'];
    $phn= $_POST['mnum'];
    $role = 2;


    if(!filter_var($email,FILTER_VALIDATE_EMAIL)){
        $error = true;
        $message[] = "<h4>Email address not valid!!</h4>";
    }
    if($fn == ""){
        $error = true;
        $message[] = "<h4>First Name cannot be empty</h4>";
    }

    if($password1 != $password2){
        $error = true;
        $message[] = "<h4>password mismatch</h4>";
    }

    if(!$error) {
        $insertdata = "insert into users values(NULL,'$fn','$ln','$email','$password1','$phn','$role','CURRENT_TIMESTAMP)";


//echo $insertdata; exit;

        $conn->db->query($insertdata);


        if ($conn->db->affected_rows == 1) {
            header("location: account.php");
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
    <!--    content will be given here-->
    <!-- registration-form -->
    <div class="registration-form">
        <div class="container">
            <div class="dreamcrub">
                <ul class="breadcrumbs">
                    <li class="home">
                        <a href="index.php" title="Go to Home Page">Home</a>&nbsp;
                        <span>&gt;</span>
                    </li>
                    <li class="women">
                        Registration
                    </li>
                </ul>
                <ul class="previous">
                    <li><a href="index.php">Back to Previous Page</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <h2>Registration</h2>
            <div class="registration-grids">
                <div class="reg-form">
                    <div class="reg">
                        <p>Welcome, please enter the following details to continue.</p>
                        <p>If you have previously registered with us, <a href="#">click here</a></p>

                            <?php

                            if(count($message)) {
                                echo '<ul class="text-danger bg-danger">';
            foreach ($message as $v){
                echo "<li>$v</li>";
            }
            echo '</ul>';
                            }?>
                        <form method="post">
                            <ul>
                                <li class="text-info">First Name: </li>
                                <li><input type="text" value="<?php if(isset($fn)) echo $fn;?>" name="fname"></li>
                            </ul>
                            <ul>
                                <li class="text-info">Last Name: </li>
                                <li><input type="text" value="<?php if(isset($ln)) echo $ln;?>" name="lname"></li>
                            </ul>
                            <ul>
                                <li class="text-info">Email: </li>
                                <li><input type="email" value="<?php if(isset($email)) echo $email;?>" name="email"></li>
                            </ul>
                            <ul>
                                <li class="text-info">Password: </li>
                                <li><input type="password"  name="pass1"></li>
                            </ul>
                            <ul>
                                <li class="text-info">Re-enter Password:</li>
                                <li><input type="password"  name="pass2" ></li>
                            </ul>
                            <ul>
                                <li class="text-info">Mobile Number:</li>
                                <li><input type="text"  name="mnum" value="<?php if(isset($phn)) echo $phn;?>"></li>
                            </ul>
                            <input type="submit" value="REGISTER NOW" name="subBtn">
                            <p class="click">By clicking this button, you are agree to my  <a href="#">Policy Terms and Conditions.</a></p>
                        </form>
                    </div>
                </div>
                <div class="reg-right">
                    <h3>Completely Free Account</h3>
                    <div class="strip"></div>
                    <p>Pellentesque neque leo, dictum sit amet accumsan non, dignissim ac mauris. Mauris rhoncus, lectus tincidunt tempus aliquam, odio
                        libero tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                    <h3 class="lorem">Lorem ipsum dolor.</h3>
                    <div class="strip"></div>
                    <p>Tincidunt metus, sed euismod elit enim ut mi. Nulla porttitor et dolor sed condimentum. Praesent porttitor lorem dui, in pulvinar enim rhoncus vitae. Curabitur tincidunt, turpis ac lobortis hendrerit, ex elit vestibulum est, at faucibus erat ligula non neque.</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- registration-form -->
    <!--    content will be given here-->
</div>
<?php require "partials/footer.php";?>
</body>
</html>
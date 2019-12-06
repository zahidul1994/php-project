<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Database;
use App\Session;
use App\src;
if(Session::getSessionData('loggedin')){
   if(Session::getSessionData('loggedin') == true){
       header("location: dashboard.php");
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
        if($row['role'] != 1){
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
Session::setSessionData('loggedin',true);
Session::setSessionData('userinfo',$data);
header("location: dashboard.php");
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Admin Panel</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots" content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet" href="../vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet" href="../vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet" href="../assets/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet" href="../assets/css/style.default.css" id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet" href="../assets/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon" href="../assets/img/favicon.ico">
    <!-- Tweaks for older IEs--><!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
  </head>
  <body>
    <div class="page login-page">
      <div class="container d-flex align-items-center">
        <div class="form-holder has-shadow">
          <div class="row">
            <!-- Logo & Information Panel-->
            <div class="col-lg-6">
              <div class="info d-flex align-items-center">
                <div class="content">
                  <div class="logo">
                  
                  <?php
require "partial/autotype.php"
		?>
                  </div>
                 
                  
                </div>
              </div>
            </div>
            <!-- Form Panel    -->
            <div class="col-lg-6 bg-white">
              <div class="form d-flex align-items-center">
                <div class="content">
                  <form method="post" class="form-validate">
                    <div class="form-group">
                      <input id="login-username" type="text" name="email" required data-msg="Please enter your username" class="input-material" <!--value="admin@idbbisew.com"-->
                      <label for="login-username" class="label-material">Email</label>
                    </div>
                    <div class="form-group">
                      <input id="login-password" type="password" name="pass" required data-msg="Please enter your password" class="input-material" <!--value="admin"-->
                      <label for="login-password" class="label-material">Password</label>
                    </div>
                    <input type="submit" name="submitBtn"  value="Login">
                    <!-- This should be submit button but I replaced it with <a> for demo purposes-->
                  </form>
                  <a href="#" class="forgot-pass">Forgot Password?</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="copyrights text-center">
        <p>Design by <a href="https://bootstrapious.com/admin-templates" class="external">Bootstrapious</a>
          <!-- Please do not remove the backlink to us unless you support further theme's development at https://bootstrapious.com/donate. It is part of the license conditions. Thank you for understanding :)-->
        </p>
      </div>
    </div>
    <!-- JavaScript files-->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/popper.js/umd/popper.min.js"> </script>
    <script src="../vendor/bootstrap/js/bootstrap.min.js"></script>
    <script src="../vendor/jquery.cookie/jquery.cookie.js"> </script>
    <script src="../vendor/chart.js/Chart.min.js"></script>
    <script src="../vendor/jquery-validation/jquery.validate.min.js"></script>
    <!-- Main File-->
    <script src="../assets/js/front.js"></script>
  </body>
</html>
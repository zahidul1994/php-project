<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Session;
use App\Database;
use App\inc\checkUser;
if(!checkUser::isAdmin()){
    header("location: index.php");
}
$userinfo = Session::getSessionData('userinfo');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Bootstrap Material Admin by Bootstrapious.com</title>
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
    <div class="page">
<!-- Main Navbar-->
      <?php
      require "partial/headermenu.php";
      ?>
      <div class="page-content d-flex align-items-stretch"> 
<!-- Side Navbar -->
        <nav class="side-navbar">
<!-- Sidebar Header-->
          <?php
      require "partial/profile.php";
      ?>
<!-- Sidebar Navidation Menus-->
          <?php
      require "partial/leftmenu.php";
      ?> 
      <!-- head name -->
      <header class="page-header">
            <div class="container-fluid">
              <h2 class="no-margin-bottom">Welcome to Carousel Images Page</h2>
            </div>
          </header>
      <!-- head name -->
      
<!-- Dashboard Counts Section-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
<!-- Item -->
<?php

if(isset($_POST['subBtn'])){
    $string_filename1 = $_FILES['car_img1']['tmp_name'];
    $string_filename2 = $_FILES['car_img2']['tmp_name'];
    $string_filename3 = $_FILES['car_img3']['tmp_name'];
    $string_filename4 = $_FILES['car_img4']['tmp_name'];
    $string_filename5 = $_FILES['car_img5']['tmp_name'];

    move_uploaded_file($string_filename1,"../assets/images/"."slide (1).jpg");
    move_uploaded_file($string_filename2,"../assets/images/"."slide (2).jpg");
    move_uploaded_file($string_filename3,"../assets/images/"."slide (3).jpg");
    move_uploaded_file($string_filename4,"../assets/images/"."slide (4).jpg");
    move_uploaded_file($string_filename5,"../assets/images/"."slide (5).jpg");
    
	echo "<h4>Images Uploaded successfully!!</h4>";
	
	}                                                                                                                       
?>
<form class="form-group" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" enctype="multipart/form-data">
<br>
<input class="form-control" type="file" name="car_img1"><br>
<input class="form-control" type="file" name="car_img2"><br>
<input class="form-control" type="file" name="car_img3"><br>
<input class="form-control" type="file" name="car_img4"><br>
<input class="form-control" type="file" name="car_img5"><br>
<input class="btn btn-secondary btn-lg" type="submit" value="Submit" name="subBtn">

</form>

<!-- Item -->
             </div>
            </div>
          </section>
          <?php include "partial/footer.php";?>
  </body>
</html>
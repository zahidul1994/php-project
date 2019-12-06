<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Session;
use App\Database;
use App\inc\checkUser;

if (!checkUser::isAdmin()) {
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
              <h2 class="no-margin-bottom">Welcome to Order Page</h2>
            </div>
          </header>
      <!-- head name -->
<!-- Dashboard Counts Section-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
<!-- Item -->

<table class="table table-responsive hoo">
        <tr>
            <th>ID</th>
            <th>User_id</th>
            <th>Payment_type</th>
            <th>Trx_id</th>
            <th>Voucher</th>
            <th>Comments</th>
            <th>Created</th>
            <th>Action</th>
            
        </tr>
    
    <?php
    $conn = new Database();
    $conn->table_name = "orders";
    $all_data = $conn->get_all();
    foreach ($all_data as $key => $value) {
        echo "<tr>
    <td>" . $value['id'] . "</td>
    <td>" . $value['user_id'] . "</td>
    <td>" . $value['payment_type'] . "</td>
    <td>" . $value['trx_id'] . "</td>
    <td>" . $value['voucher'] . "</td>
    <td>" . $value['comments'] . "</td>
    
    <td>" . $value['updated'] . "</td>
    
</script>
    <td><a class='btn btn-info' id='detils' rel='modal:open' href='orderdetailes.php?recortid=" . $value['id'] . "'>Details</a></td>
</tr>";
    }
    ?>
    
    </table>

<!-- Item -->
             </div>
            </div>
          </section>
          <?php include "partial/footer.php"; ?>
  </body>
</html>
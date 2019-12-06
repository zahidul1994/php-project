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
      <?php

        if (isset($_GET['recortid'])) {
            $conn = new Database();
            $id = $_GET['recortid'];
    //$conn->table_name = "orders";
            $raw_query = "SELECT orders.*, users.fname,users.lname,users.email,users.phone FROM orders INNER JOIN users ON orders.user_id=users.id where orders.id='$id'";
            $orderinfoquery = $conn->rawQuery($raw_query);
            $orderinfo = $orderinfoquery->fetch_assoc();

            $conn->table_name = "orderdetails";
            $datilsQuery = $conn->get_all_where('order_id = ' . $id);
        }
        $selctQuery = "SELECT * FROM `orders` where id='$id'";
        $conn->table_name = "profiles";
        $conn->get_all_where($id);
        while ($conn->fetch_assoc())



        ?>
<div class="row">
    <div class="col-12 bg-light" id="maincontainer">




<div class="table-responsive text-center" id="printdiv">
    <div class="container">
        <h3 class = "text-center mt-5 font-weight-bold">Invoice</h3>
        <div class="row">
            <div class="col-md-6">
                <div class="text-left">
                    <p>Customer Name:<?php echo $orderinfo['fname']; ?></p>
                    <p>Addrsee:<?php echo $orderinfo['user_id']; ?></p>
                    <p>Phone:<?php echo $orderinfo['phone']; ?></p>
                </div>

            </div>
            <div class="col-md-6">
                <div class="text-left">
                    <p>Id: <?php echo $orderinfo['id']; ?></p>
                    <p>Date:<?php echo $orderinfo['created']; ?></p>
                </div>
            </div>



        </div>
        <div class="table-responsive">
            <table class="table table-bordered">
                <tr>
                    <th>Sl No</th>
                    <th>Product Name</th>
                    <th>Product price</th>
                    <th>Quentity</th>
                    <th>price</th>

                </tr>
                <?php
                if (isset($_GET['recortid'])) {
                    $serial = 1;
                    foreach ($datilsQuery as $key => $values) {
                        $total = intval($values['quantity']) * $values['price'];
                        echo "<tr>
    <td>" . $serial . "</td>
    <td>" . $values['product_id'] . "</td>
    <td>" . $values['price'] . "</td>
    <td>" . $values['quantity'] . "</td>
    <td>" . $total . "</td>
    
</tr>";
                    }
                }
                ?>

                <tr>
                    <td colspan="3" rowspan="4"></td>
                    <td>Sub Total</td>
                    <td><?php echo $orderinfo['total']; ?></td>
                </tr>
                <tr>

                    <td>debit</td>
                    <td></td>
                </tr>
                <tr>

                    <td>due</td>
                    <td></td>
                </tr>
                <tr>

                    <td></td>
                    <td></td>
                </tr>

            </table>
            <br>
            <br><br>
            <p>Delivery Date: <?php echo date('D-M-Y'); ?></p>
            <div class="text-right mr-5">
                <p class="">signature</p>
                <p class="">Rongdhonu IT company Limited</p>
            </div>
        </div>
    </div>

</div>
	
	<button class="btn btn-info mt-3 ppp">Print</button>
	</div>
	<a class = "btn btn-primary mt-3" href= "orders.php">Previous</a>
	</div>
	
	<div>
	<script src="../assets/js/jquery.min.js"></script>
<script>
	$(document).ready(function () {
	$(".ppp").click(function() {
            window.print();
        });
	});
</script>

<!-- Item -->
             </div>
            </div>
          </section>
       
  </body>
</html>
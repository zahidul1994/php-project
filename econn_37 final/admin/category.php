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
<!-- data edit and deletect  start-->
<?php 
$conn = new Database;
if (isset($_GET['action']) && $_GET['action'] == "edit") {
  $idToEdit = $_GET['recortid'];

  $conn->get($idToEdit);
  if ($conn->num_rows == 1) {
    $rowtoEdit = $conn->fetch_assoc();
  }
}

if (isset($_GET['action']) && $_GET['action'] == "delete") {

  $conn->table_name = "categories";
  $id = $_GET['recortid'];
  $conn->delete($id);
  if ($conn->affected_rows == 1) {
    $message = "Product Deleted.";
  }
}
?>
<!-- data edit and deletect area end -->
<!-- data inset area start -->

<?php 
if (isset($_POST['subBtn'])) {

  $conn->table_name = "categories";
  $insetcat = [
    'name' => $_POST['name'],
    'details' => $_POST['details'],
    'parent_id' => $_POST['parent'],

  ];
  if ($conn->create($insetcat)) {
    $message = "Product Updated!!";
  }

}

?>
<!-- data inset area start -->


<!-- form area start -->

<?php if (isset($message)) echo $message; ?>
<form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
<?php
if (isset($rowtoEdit['id'])) {
  echo '<input type="hidden" name="id" value="' . $rowtoEdit['id'] . '">';
}
?>
<div class="form-group">
<input class="form-control" type="text" required placeholder="Category Name" name="name" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['name'] ?>">

<input class="form-control" type="text" required placeholder="Category Details" name="details" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['details'] ?>">


<input class="form-control" type="number" placeholder="parent id" name="parent" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['parent'] ?>">

<?php
if (isset($rowtoEdit)) {
  echo '<input class="btn btn-secondary btn-lg" type="submit" value="Update" name="updateBtn">';
} else {
  echo '<input class="btn btn-secondary btn-lg" type="submit" value="Create" name="subBtn">';
}
?>
   
<!-- form area end -->
</div>
</form>
<table class="table table-responsive hoo">
        <tr>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Details</th>
            <th>Created</th>
            <th>Praent ID</th>
            <th>Action</th>
        </tr>
            
        </tr>
    
    <?php
    $conn = new Database();
    $conn->table_name = "categories";
    $all_data = $conn->get_all();
    foreach ($all_data as $key => $value) {
      echo "<tr>
    <td>" . $value['id'] . "</td>
    <td>" . $value['name'] . "</td>
    <td>" . $value['details'] . "</td>
    <td>" . $value['created'] . "</td>
    <td>" . $value['parent_id'] . "</td>";
      $html = "";
      $html .= "<td><a class='fa fa-trash p-1' href='?recortid=" . $value['id'] . "&action=delete'onClick=\"return confirm('Are you absolutely sure you want to delete?')\"></a>" . "<a class='fa fa-edit p-1' href='?recortid=" . $value['id'] . "&action=edit'></a>";
      $html .= "</td></tr>";
      echo $html;
    }
    ?>
   
    
    </table>

<!-- Item -->
             </div>
            </div>
          </section>
          <?php include "partial/footer.php"; ?>
          <script>
$(document).ready(function () {
    $("#productcontainer").on("click",".setItemBtn", function(){
       //alert($(this).data("itemid"));
       $.post("productHandler.php",{
           action:"setitem",
           itemid:$(this).data("itemid"),
           itemfield:$(this).data("item")
       },function(d){
//console.log(d);
location.reload();
       });
    });

    $("#productcontainer").on("click",".imageBtn", function(){
        //alert($(this).data("itemid"));
        $.post("productHandler.php",{
            action:"revokeItemStatus",
            itemid:$(this).data("itemid"),
            itemfield:$(this).data("item")
        },function(d){
//console.log(d);
            location.reload();
        });
    });
});
</script>
         
  </body>
</html>
  </body>
</html>
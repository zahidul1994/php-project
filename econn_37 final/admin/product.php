<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Database;
use App\inc\checkUser;
use App\Session;

if (!checkUser::isAdmin()) {
    header("location: index.php");
}
$conn = new Database();
$userinfo = Session::getSessionData('userinfo');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible"content="IE=edge">
    <title>Product</title>
    <meta name="description"content="">
    <meta name="viewport"content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="robots"content="all,follow">
    <!-- Bootstrap CSS-->
    <link rel="stylesheet"href="../vendor/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome CSS-->
    <link rel="stylesheet"href="../vendor/font-awesome/css/font-awesome.min.css">
    <!-- Fontastic Custom icon font-->
    <link rel="stylesheet"href="../assets/css/fontastic.css">
    <!-- Google fonts - Poppins -->
    <link rel="stylesheet"href="https://fonts.googleapis.com/css?family=Poppins:300,400,700">
    <!-- theme stylesheet-->
    <link rel="stylesheet"href="../assets/css/style.default.css"id="theme-stylesheet">
    <!-- Custom stylesheet - for your changes-->
    <link rel="stylesheet"href="../assets/css/custom.css">
    <!-- Favicon-->
    <link rel="shortcut icon"href="../assets/img/favicon.ico">
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
              <h2 class="no-margin-bottom">Welcome to Product Page</h2>
            </div>
          </header>
      <!-- head name -->
<!-- Dashboard Counts Section-->
          <section class="dashboard-counts no-padding-bottom">
            <div class="container-fluid">
              <div class="row bg-white has-shadow">
<!-- Item -->

<?php
if (isset($_GET['action']) && $_GET['action'] == "edit") {
    $idToEdit = $_GET['recortid'];
    $selectQuery = "select * from products where id='$idToEdit'";
    $selectQueryResult = $conn->db->query($selectQuery);
    if ($selectQueryResult->num_rows == 1) {
        $rowtoEdit = $selectQueryResult->fetch_assoc();
    }
}

if (isset($_GET['action']) && $_GET['action'] == "delete") {

    $id = $_GET['recortid'];
    $deleteQuery = "delete from `products` where id='$id' limit 1";
    $conn->db->query($deleteQuery);
    if ($conn->db->affected_rows == 1) {
        $message = "Product Deleted.";
    }
}
if (isset($_POST['subBtn'])) {
    $conn->table_name = "products";
    $catname = $_POST['cname'];
    $name = $_POST['name'];
    $sku = $_POST['sku'];
    $details = $_POST['details'];
    $pprice = $_POST['pprice'];
    $sprice = $_POST['sprice'];
    $vat = $_POST['vat'];
    $quantity = $_POST['quantity'];
    $manid = '1';
    $userid = $userinfo['id'];
    $insertQuery = "insert into products values(NULL,'$catname','$name','$sku','$details','$pprice','$sprice','$vat','$quantity','1','0','$manid','$userid',CURRENT_TIMESTAMP,NULL)";
    //echo $insertQuery; exit;
    $conn->db->query($insertQuery);
    if ($conn->db->affected_rows == 1) {
        $insertedid = $conn->db->insert_id;
        $message = "Product Inserted.ID:" . $conn->db->insert_id;
        $allimages = $_FILES['images'];
        $allnames = $allimages['name'];
        $templocation = $allimages['tmp_name'];
        for ($i = 0; $i < count($allnames); $i++) {
            $imagename = time() . "_" . $insertedid . "_" . rand(10000, 99999) . ".jpg";
            if (move_uploaded_file($templocation[$i], "../assets/images/productimages/" . $imagename)) {
                $data = [
                    'imagename' => $imagename,
                    'product_id' => $insertedid
                ];
                $conn->table_name = "images";
                $conn->create($data);
            }
        }
//var_dump($allimages);
    }
}

//update
if (isset($_POST['updateBtn'])) {
    $conn->table_name = "products";
    $idtoUpdate = $_POST['id'];
    $dataToUpdate = [
        'catname' => $_POST['cname'],
        'name' => $_POST['name'],
        'sku' => $_POST['sku'],
        'details' => $_POST['details'],
        'pprice' => $_POST['pprice'],
        'sprice' => $_POST['sprice'],
        'vat' => $_POST['vat'],
        'quantity' => $_POST['quantity'],
        'manid' => '1',
        'userid' => $userinfo['id']
    ];
    if ($conn->set($dataToUpdate, $idtoUpdate)) {
        $message = "Product Updated!!";
    }


}

?>
    
    <?php if (isset($message)) echo $message; ?>
    
    <form class="form-group"action="<?php echo $_SERVER['PHP_SELF']; ?>"method="post"enctype="multipart/form-data">
    <?php
    if (isset($rowtoEdit['id'])) {
        echo '<input type="hidden"name="id"value="' . $rowtoEdit['id'] . '">';
    }
    ?>
    
    <div class="row collapse<?php if (isset($rowtoEdit)) echo "show"; ?>"id="formContainer">
        <div class="col-md-6">
        <select class="form-control text-center custom-select" name="cname">
    <option selected> Product Category Name</option>
    
    <?php
    $conn->table_name = "categories";
    $allcat = $conn->get_all();
    foreach ($allcat as $value) {
        if ($value['id'] == $rowtoEdit['cid']) {
            echo '<option value="' . $value['id'] . '"selected>' . $value['name'] . '</option>';
        } else {
            echo '<option value="' . $value['id'] . '">' . $value['name'] . '</option>';
        }
    }

    ?>
  </select><br><br>
  <input class="form-control"type="text"placeholder="product name" name="name" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['name'] ?>"> <br>

        <input class="form-control" type="text" placeholder="sku" name="sku" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['sku'] ?>"> <br>

        <textarea name="details" class="form-control"placeholder="product details"><?php if (isset($rowtoEdit)) echo $rowtoEdit['details'] ?></textarea>
         <br>
         <input class="form-control"type="file"name="images[]"multiple>
        </div><!-- col-md-6-->
        <div class="col-md-6">
        <input class="form-control"type="number"placeholder="purchase price"name="pprice" value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['pprice'] ?>"> <br>
        <input class="form-control"type="number"placeholder="sale price"name="sprice"value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['sprice'] ?>"> <br>
        <input class="form-control"type="number"placeholder="vat"name="vat"value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['vat'] ?>"> <br>
        <input class="form-control"type="number"placeholder="quantity"name="quantity"value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['quantity'] ?>"> <br>
        <input class="form-control"type="number"placeholder="manid"name="manid"value="<?php if (isset($rowtoEdit)) echo $rowtoEdit['manid'] ?>"> <br>
        </div><!-- col-md-6-->
        <div class="col-md-12">
        <?php
        if (isset($rowtoEdit)) {
            echo '<input class="btn btn-secondary btn-lg"type="submit"value="Update"name="updateBtn">';
        } else {
            echo '<input class="btn btn-secondary btn-lg"type="submit"value="Create"name="subBtn">';
        }
        ?>
   
        
        </div><!-- col-md-6-->
    </div><!-- row formcontainer-->
    </form>
    <hr>
<div class="table-responsive"id="productcontainer">
<button type="button"class="btn btn-primary"data-toggle="collapse"data-target="#formContainer">New</button>
<table class="table">
        <tr>
            <th>ID</th>
            <th>Info</th>            
            <th>Product price<br>Sales price</th>            
            <th>vat</th>
            <th>Quantity</th>
            <th>manufacture Id<br>User Id</th>
            <th>Item Status</th>
            <th class="d-none">Create Date</th>
            <th class="d-none">Update Time</th>
            <th>Action</th>
        </tr>
        <?php
        $conn = new Database();
        $conn->table_name = "products";
        $all_data = $conn->get_all();
        foreach ($all_data as $key => $value) {
            $new = ($value['new']) ? "<img class='imageBtn' data-item='new' data-itemid='" . $value['id'] . "' src='../assets/images/new-item.png' width='32px'/>" : "";
            $hot = ($value['hot']) ? "<img class='imageBtn' data-item='hot' data-itemid='" . $value['id'] . "' src='../assets/images/hot-item.png' width='32px'/>" : "";
            echo "<tr>
    <td>" . $value['id'] . "</td>
    <td>Name: " . $value['name'] . "<br> Sku: " . $value['sku'] . "<br>Details: " . $value['details'] . "</td>    
    <td>" . $value['pprice'] . "<br>" . $value['sprice'] . "</td>    
    <td>" . $value['vat'] . "</td>
    <td>" . $value['quantity'] . "</td>
    <td>" . $value['manid'] . "<br>" . $value['userid'] . "</td>  
    <td>" . $new . $hot . "
    </td>  
    <td class='d-none'>" . $value['created'] . "</td>
    <td class='d-none'>" . $value['updated'] . "</td>";
            $html = "";
            $html .= "<td><a class='fa fa-trash p-1' href='?recortid=" . $value['id'] . "&action=delete'onClick=\"return confirm('Are you absolutely sure you want to delete?')\"></a>" . "<a class='fa fa-edit p-1' href='?recortid=" . $value['id'] . "&action=edit'></a>";
            if (!$value['hot']) {
                $html .= "<a href='javascript:void(0)' class='fa fa-fire p-1 setItemBtn' data-itemid='" . $value['id'] . "' data-item='hot'></a>";
            }
            if (!$value['new']) {
                $html .= "<a href='javascript:void(0)' class='fa fa-plus p-1 setItemBtn' data-itemid='" . $value['id'] . "' data-item='new'></a>";
            }
            $html .= "</td></tr>";
            echo $html;
        }
        ?>
    
    </table>
  

<!-- Item -->
             </div>
            </div>
          </section>
          <!-- Page Footer-->
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
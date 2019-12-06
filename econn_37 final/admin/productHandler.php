<?php
require __DIR__ . '/../vendor/autoload.php';
use App\src\Product;
if(isset($_POST['action'])){
    if($_POST['action'] == "setitem"){
$p = new Product();
if($p->setItemStatus($_POST['itemfield'],$_POST['itemid'],1)){
    echo json_encode(['success'=>'true','message'=>'done']);
}
    }
    if($_POST['action'] == "revokeItemStatus"){
        $p = new Product();
        if($p->setItemStatus($_POST['itemfield'],$_POST['itemid'],0)){
            echo json_encode(['success'=>'true','message'=>'done']);
        }
    }
}
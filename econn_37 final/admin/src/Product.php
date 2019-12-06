<?php
/**
 * Created by PhpStorm.
 * User: Lab-2
 * Date: 11/11/2018
 * Time: 4:06 PM
 */
namespace App\src;
use App\Database;

class Product
{
   public $conn;
   function __construct()
   {
   $this->conn = new Database();
   }
    public function setItemStatus($field,$id,$status){
    $this->conn->table_name = "products";
    $d = [
        $field=>$status
    ];
    return $this->conn->set($d,$id);
    }
}
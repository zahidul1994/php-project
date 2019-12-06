<?php
require __DIR__ . '/vendor/autoload.php';
use App\Database;
if($_POST['itemCount']){
    $conn = new Database();
    $userid = 2;
    $conn->table_name = "profiles";
    $userinfo = $conn->get_all_where('user_id = '.$userid);
    if(!$userinfo){
        /*
         *{ ["currency"]=> string(3) "BDT" ["shipping"]=> string(1) "0" ["tax"]=> string(1) "0" ["taxRate"]=> string(1) "0" ["itemCount"]=> string(1) "3" ["item_name_1"]=> string(6) "Iphone" ["item_quantity_1"]=> string(1) "1" ["item_price_1"]=> string(3) "800" ["item_options_1"]=> string(10) "number: 94" ["item_name_2"]=> string(6) "flower" ["item_quantity_2"]=> string(1) "1" ["item_price_2"]=> string(3) "600" ["item_options_2"]=> string(10) "number: 93" ["item_name_3"]=> string(3) "Toy" ["item_quantity_3"]=> string(1) "1" ["item_price_3"]=> string(3) "800" ["item_options_3"]=> string(10) "number: 92" ["return"]=> string(11) "success.php" ["cancel_return"]=> string(10) "cancel.php" ["storename"]=> string(9) "teststore" ["cartid"]=> string(8) "12321321" ["payment_method"]=> string(1) "2" ["trx_id"]=> string(3) "555" ["saddress"]=> string(6) "mirpur" ["saddress_thana"]=> string(5) "dhaka" ["saddress_dist"]=> string(5) "dhaka" ["saddress_div"]=> string(10) "Bangladesh" ["saddress_country"]=> string(2) "on" ["baddress"]=> string(13) "Mirpur, Dhaka" ["baddress_thana"]=> string(7) "mirpur1" ["baddress_dist"]=> string(5) "dhaka" ["baddress_div"]=> string(5) "dhaka" ["baddress_country"]=> string(10) "Bangladesh" } array(3) { [0]=> array(4) { ["quantity"]=> string(1) "1" ["name"]=> string(1) "1" ["price"]=> string(3) "800" ["itemid"]=> string(2) "94" } [1]=> array(4) { ["quantity"]=> string(1) "1" ["name"]=> string(1) "1" ["price"]=> string(3) "600" ["itemid"]=> string(2) "93" } [2]=> array(4) { ["quantity"]=> string(1) "1" ["name"]=> string(1) "1" ["price"]=> string(3) "800" ["itemid"]=> string(2) "92" } }
         */
        $data = array();
        $data['user_id'] = $userid;
        $data['saddress'] = $_POST['saddress'];
        $data['saddress_thana'] = $_POST['saddress_thana'];
        $data['saddress_dist'] = $_POST['saddress_dist'];
        $data['saddress_div'] = $_POST['saddress_div'];
        $data['saddress_country'] = $_POST['saddress_country'];
        $data['baddress'] = $_POST['baddress'];
        $data['baddress_thana'] = $_POST['baddress_thana'];
        $data['baddress_dist'] = $_POST['baddress_dist'];
        $data['baddress_div'] = $_POST['baddress_div'];
        $data['baddress_country'] = $_POST['baddress_country'];
        $profile_id = $conn->create($data);
    }
    //printf("%d",$userinfo);
    //if user is not logged in show the link of registration
    //var_dump($_POST);
    $itemCount =$_POST['itemCount'];
    $items = array();
    $totalPrice = 0;
    for ($i=1;$i<=$itemCount;$i++){
        $item = array();
        $n = "item_name_".$i;
        $q = "item_quantity_".$i;
        $p = "item_price_".$i;
        $o = "item_options_".$i;
        $item_id = $_POST[$o];
        $o = explode(":",$item_id);
        //$i = "item_id_".$i;

        $item['name'] =
        $item['quantity'] = $_POST[$q];
        //$item[$i] = $_POST[$i];
        $item['price'] = $_POST[$p];
        $totalPrice += $_POST[$p]*$_POST[$q];
        $item['itemid'] = trim($o[1]);
        $items[] = $item;
    }
    $conn->table_name = "orders";
    $orderdata = array();
    $orderdata['user_id'] = $userid;
    $orderdata['payment_type'] = $_POST['payment_method'];
    $orderdata['trx_id'] = $_POST['trx_id'];
    $orderdata['total'] = $totalPrice;
    $orderdata['voucher'] = $_POST['coupon'];
    $orderdata['comments'] = $_POST['comment'];
    $orderid = $conn->create($orderdata);
    if($orderid){
foreach($items as $item){

    $conn->table_name = "orderdetails";
    $o_d_data = array();
    $o_d_data['order_id'] = $orderid;
    $o_d_data['product_id'] = $item['itemid'];
    $o_d_data['quantity'] = $item['quantity'];
    $o_d_data['price'] = $item['price'];
    $conn->create($o_d_data);
}
    }
    /*
     *array(3) {
      [0]=>
      array(4) {
        ["quantity"]=>
        string(1) "2"
        ["name"]=>
        string(1) "2"
        ["price"]=>
        string(3) "800"
        ["itemid"]=>
        string(2) "94"
      }
     */
    //var_dump($items);
//var_dump($totalPrice);
    echo "<hr>Your order has been submitted. Order id: $orderid.";
    echo "<hr>";
    echo "<a href='index.php'>Index</a>";

}

?>

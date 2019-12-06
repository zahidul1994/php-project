simpleCart.currency({
    code: "BDT" ,
    name: "Bangladesh Taka" ,
    symbol: "৳"
});
simpleCart({
    cartColumns: [
        { attr: "name" , label: "Name" } ,
        { attr: "price" , label: "Price", view: 'currency' } ,
        { attr: "number" , label: "Number" },
        { view: "decrement" , label: false , text: "-" } ,
        { attr: "quantity" , label: "Qty" } ,
        { view: "increment" , label: false , text: "+" } ,
        { attr: "total" , label: "SubTotal", view: 'currency' } ,
        { view: "remove" , text: "Remove" , label: false }
    ],
    cartStyle: "table",
});
simpleCart.bind( 'beforeCheckout' , function( data ){
    //data.userinfo = "111";
    data.payment_method = $("#payment_method").val(),
    data.trx_id = $("#trx_id").val(),
    data.coupon = $("#coupon").val(),
    data.comment = $("#comment").val(),
    data.saddress = $("#saddress").val(),
    data.saddress_thana = $("#saddress_thana").val(),
    data.saddress_dist = $("#saddress_dist").val(),
    data.saddress_div = $("#saddress_div").val(),
    data.saddress_country = $("#saddress_country").val(),
    data.baddress = $("#baddress").val(),
    data.baddress_thana = $("#baddress_thana").val(),
    data.baddress_dist = $("#baddress_dist").val(),
    data.baddress_div = $("#baddress_div").val(),
    data.baddress_country = $("#baddress_country").val()
});
simpleCart({
    // currency: "Tk",
        checkout: {
            type: "SendForm" ,
            url: "order.php" ,
            // http method for form, "POST" or "GET", default is "POST"
            method: "POST" ,
            // url to return to on successful checkout, default is null
            success: "success.php" ,
            // url to return to on cancelled checkout, default is null
            cancel: "cancel.php" ,
            // an option list of extra name/value pairs that can
            // be sent along with the checkout data
            extra_data: {
                storename: "teststore",
                cartid: "12321321"
            }
        }
    });
    //
    var items = [];
    simpleCart.each(function( item , x ){
        //items.push( item.name );
        console.log(item + ":" + x);
    });
    //console.log( items );

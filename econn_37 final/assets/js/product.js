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

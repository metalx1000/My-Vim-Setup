    function getList(){
      var url = "getList.php";
      $.getJSON( url, function( data ) {
        $("#list").html("");
        data.forEach(function(item){
         $("#list").append("<a href=\"#\" class=\"list-group-item\">"+item.name+"</a>");
        });
      });
    }


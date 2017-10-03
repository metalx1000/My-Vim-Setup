    function sumbit(){
      var url = "submit.php";
      $.post( url, {data:"test"}, function( data ) {
        console.log( data );
      });
    }

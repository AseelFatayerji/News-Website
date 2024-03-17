$(document).ready(function() {

    $("#display").click(function() {

      $.ajax({    //create an ajax request to display.php
        type: "GET",
        url: "../Backend/Display.php",
        dataType: "html",   //expect html to be returned
        success: function(response){
            $("#news").html(response);
            //alert(response);
        }

    });
});
});
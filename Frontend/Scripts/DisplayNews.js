jQuery(document).ready(function ($) {
  fetchNews();
  function fetchNews() {
    $.ajax({
      url: "http://localhost/fullstack/News%20Website/Backend/Display.php",
      type: "GET",
      dataType: "json",
      success: function (news) {
        $("#news").empty();
        $.each(news, function (index, value) {
          console.log(value["img"]);
          $("#news").append(
            '<div class = "card"><img class="article-img" src="' +
              value["img"] +
              '"/> <div class="card-header">' +
              value["title"] +
              '</div><div class="card-body"><p>' +
              value["content"] +
              '</p></div><div class="right"><h6>' +
              value["author"] +
              '</h6></div> </div>'
          );
        });
      },
      error: function (error) {
        console.error("Error fetching news:", error);
      },
    });
  }
});

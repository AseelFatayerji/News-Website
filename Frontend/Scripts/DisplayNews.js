window.onload = () => {
  let news = $.get("../../Backend/Display.php", function () {
    alert("success");
  })
    .fail(function () {
      alert("error");
    })
    .always(function () {
      alert("finished");
    });
};

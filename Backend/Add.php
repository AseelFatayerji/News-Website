<?php

include 'connection.php';

$img = $_POST['img'];
$title = $_POST['title'];
$content = $_POST['content'];
$author = $_POST['author'];
$imgData = base64_encode(file_get_contents($img));
echo $imgData;
$query = $mysqli->prepare('INSERT INTO news (title,content,author,images) VALUES(?,?,?,?);');
$query->bind_param('ssss', $title, $content, $author, $imgData);
$query->execute();
$response['status'] = "success";
$response['message'] = "news $title was added successfully for";
//header("Location:http://localhost/fullstack/News%20Website/Frontend/index.html", true, 301);

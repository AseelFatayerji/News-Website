<?php

include 'connection.php';

$img = $_POST['img'];
$title = $_POST['title'];
$content = $_POST['content'];
$author = $_POST['author'];
$query = $mysqli->prepare('INSERT INTO news (title,content,author,images) VALUES(?,?,?,?);');
$query->bind_param('ssss', $title, $content, $author, $img);
$query->execute();
$response['status'] = "success";
$response['message'] = "news $title was added successfully for";
header("Location:http://localhost/fullstack/News%20Website/Frontend/index.html", true, 301);

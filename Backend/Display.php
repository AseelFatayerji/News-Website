<?php
include 'connection.php';
$readSql = "SELECT * FROM news";
$result = mysqli_query($mysqli, $readSql);

$news = [];
while ($row = mysqli_fetch_assoc($result)) {
    $item = array(
        'title' => $row['title'],
        'content' => $row['content'],
        'author' => $row['author'],
        'img' => $row['images'],
    );
    $news[] = $item;    
}
echo json_encode($news);



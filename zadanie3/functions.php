<?php

function getRows() {
    $pdo = new PDO('mysql:dbname=words;host=localhost;','root','');
    $selectQuery = 'SELECT * FROM uploaded_text';
    $allRows = $pdo->query($selectQuery)->fetchAll(PDO::FETCH_ASSOC);
    
    return $allRows;
};


function getDetailContent(int $text_id) {
    $pdo = new PDO('mysql:dbname=words;host=localhost;','root','');
    $selectQuery = "SELECT * FROM word WHERE text_id = $text_id";
    $selectQueryContent = "SELECT * FROM uploaded_text WHERE id = $text_id";
    $allRows = $pdo->query($selectQuery)->fetchAll(PDO::FETCH_ASSOC);
    $row = $pdo->query($selectQueryContent)->fetch(PDO::FETCH_ASSOC);
    $allRows['content'] = $row;
    return $allRows;
}


?>
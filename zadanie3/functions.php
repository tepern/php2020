<?php

function getRows() {
    $pdo = new PDO('mysql:dbname=words;host=localhost;','root','');
    $selectQuery = 'SELECT * FROM uploaded_text';
    $allRows = $pdo->query($selectQuery)->fetchAll(PDO::FETCH_ASSOC);
    
    return $allRows;
};

$allRows = getRows();

?>
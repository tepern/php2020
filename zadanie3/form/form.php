<?php

function getMyText($words) {
    if($words){    
        if(!empty($words)) {
            $text = htmlspecialchars($words);

            $count = wordsCount($text);
            $list = myWords($text);

            $id = insertContent($text,$count);
            insertWords($list,$id);
            
        } 

    }
}

function get_my_file ($docs) {
    if(!empty($docs["name"])){
    
        foreach ($docs['tmp_name'] as $index => $tmpPath) {
            if(!array_key_exists($index, $docs['name'])) {
                continue;
            }
            
            $name = explode('.', $docs['name'][$index]);
            $hash = hash('crc32b', $tmpPath);
            $name[0] = $name[0].$hash;
            
            if(move_uploaded_file($tmpPath, __DIR__.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.$name[0].'.txt')) {

               $text = file_get_contents(__DIR__.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.$name[0].'.txt');
               $count = wordsCount($text);
               $list = myWords($text);

               $id = insertContent($text,$count);
               insertWords($list,$id);
            }
        }
    }
}

function myWords (string $text) {
  $words=preg_split("/[\s,.:()-]+/", $text, NULL, PREG_SPLIT_NO_EMPTY);

  $word_str=implode(",", $words);
  $list = [];
  foreach ($words as $word) {
    
    $count=mb_substr_count($word_str, $word);

    if(!array_key_exists($word, $list)) {
      $list[$word] = $count;
    }
  }

  return $list; //массив слов
}

function wordsCount (string $text) : int {
  $words=preg_split("/[\s,.:()-]+/", $text, NULL, PREG_SPLIT_NO_EMPTY);

  $word_str=implode(",", $words);
  $list = [];
  foreach ($words as $word) {
    
    $count=mb_substr_count($word_str, $word);

    if(!array_key_exists($word, $list)) {
      $list[$word] = $count;
    }
  }

  return count($list);//количество слов
}

function insertContent($text, int $count) {
    $pdo = new PDO('mysql:dbname=words;host=localhost;','root',''); 
    $insertQuery = 'INSERT INTO
         uploaded_text(content,date,words_count)
         VALUES (?,?,?)';
    $statement = $pdo->prepare($insertQuery);
    $success = $statement->execute([
        $pdo->quote("$text"),
        date("Y-m-d"),
        $count
    ]);
    $index = $pdo->lastInsertId();
    return $index;
}

function insertWords($list, int $text_id) {
    $pdo = new PDO('mysql:dbname=words;host=localhost;','root','');
    foreach ($list as $word => $count) { 
        $insertQuery = 'INSERT INTO
            word(text_id,word,count)
            VALUES (?,?,?)';
        $statement = $pdo->prepare($insertQuery);
        $success = $statement->execute([
            $text_id,
            $pdo->quote("$word"),
            $count
        ]);
    }
}


getMyText($_POST["text"]);
get_my_file($_FILES["docs"]);
header('Refresh: 5; url=../../zadanie3/');
echo "<p>Данные загружены</p>";



?>
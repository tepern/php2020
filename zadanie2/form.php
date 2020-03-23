<?php

if($_POST["text"]){
    $text = strip_tags(trim($_POST["text"]));
}
if(!empty($_FILES["docs"]["name"])){
    $docs = $_FILES["docs"];
    foreach ($docs['tmp_name'] as $index => $tmpPath) {
        if(!array_key_exists($index, $docs['name'])) {
            continue;
        }
        
        $name = explode('.', $docs['name'][$index]);
        $hash = hash('crc32b', $tmpPath);
        $name[0] = $name[0].$hash;
        //$newName = implode('.', $name);
        move_uploaded_file($tmpPath, __DIR__.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.$name[0].'.csv');
    }
}

function get_my_file () {
    
}

?>
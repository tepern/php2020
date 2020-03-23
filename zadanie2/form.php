<?php

function getMyText($words) {
    if($words){    
        if(!empty($words)) {
            $text = htmlspecialchars($words);
            $hash = hash('crc32b', date('l jS \of F Y h:i:s A'));
            $file_path ='uploads'.DIRECTORY_SEPARATOR.'text_'.$hash.'.csv';
            touch($file_path);
            if(file_put_contents($file_path, $text)>0) {
                echo "<p>Текст сохранен</p>";
            };
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
            
            if(move_uploaded_file($tmpPath, __DIR__.DIRECTORY_SEPARATOR.'uploads'.DIRECTORY_SEPARATOR.$name[0].'.csv')) {
                echo "<p>Файл сохранен</p>";
            };
        }
    }
}
if(!is_dir('uploads')) {
    mkdir('uploads');
};

if(is_dir('uploads')) {
    getMyText($_POST["text"]);
    get_my_file($_FILES["docs"]);
};


?>
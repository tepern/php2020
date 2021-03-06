<?php
  
    $text = "Строка (тип string) - это набор символов, где символ - это то же самое, что и байт. Это значит, что PHP поддерживает ровно 256 различных символов, а также то, что в PHP нет встроенной поддержки Unicode.\n 
      Смотрите также подробности реализации строкового типа.\n
      В PHP 7.0.0 на 64-битных платформах нет каких-либо достижимых ограничений для длины строки, в 32-битных системах и в более ранних версиях PHP, строки не могут быть более 2 ГБ (2147483647 байт).\n
      Строка может быть определена четырьмя различными способами.\n
      1.Одинарные кавычки\n
      Простейший способ определить строку - это заключить ее в одинарные кавычки (символ ').\n
      Чтобы использовать одинарную кавычку внутри строки, проэкранируйте ее обратным слешем (\). Если необходимо написать сам обратный слеш, продублируйте его (\\). Все остальные случаи применения обратного слеша будут интерпретированы как обычные символы: это означает, что если вы попытаетесь использовать другие управляющие последовательности, такие как \\r или \\n, они будут выведены как есть вместо какого-либо особого поведения.\n
      2.Двойные кавычки\n
      Если строка заключена в двойные кавычки (\"), PHP распознает управляющие последовательности специальных символов.\n
      Но самым важным свойством строк в двойных кавычках является обработка переменных.\n";

    mb_regex_encoding('UTF-8');
    mb_internal_encoding("UTF-8");

    function my_mb_string (string $text): void {
      $words=preg_split("/[\s,.:()-]+/", $text, NULL, PREG_SPLIT_NO_EMPTY);

      $word_str=implode(",", $words);
      $list = [];
      foreach ($words as $word) {
        
        $count=mb_substr_count($word_str, $word);

        if(!array_key_exists($word, $list)) {
          $list[$word] = $count;
        }
      }

      foreach ($list as $key => $item) {
        
        echo $key . ":" . $item . PHP_EOL;

      }

       echo "Всего слов: " . count($list);
    }
    
    echo my_mb_string($text);
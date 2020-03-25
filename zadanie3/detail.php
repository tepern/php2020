<?php

require 'functions.php';
$allRows = getDetailContent($_GET["text_id"]);
$row_content = array_pop($allRows); 

?>
<link rel='stylesheet' href="/zadanie3/style.css">
<div class="container">
    <p><a href="/zadanie3/form/" class="btn">Загрузить</a><a href="..<?php DIRECTORY_SEPARATOR ?>" class="btn">На главную</a></p>
    <div class="text-info"><p>Дата: <?php echo $row_content['date'] ?></p><p>Всего слов: <?php echo $row_content['words_count'] ?> </p></div>
    <table border="1">
        <tr>
            <th>Код слова</th><th>Код текста</th><th>Слово</th><th>Число повторов</th>
        </tr>
        <?php if(!empty($allRows)) { 
             
            ?>
            
            <?php foreach ($allRows as $row) { 
               
                ?>   
            <tr>

                <?php foreach ($row as $value) { ?>
                    <td><?php echo $value ?></td>
                <?php } ?>
            </tr>
            <?php } ?> 
    </table>

       <?php }?>

    <p><?php echo $row_content['content'] ?></p>

</div>


<?php

require 'functions.php';
mb_internal_encoding("UTF-8");
$allRows = getRows();

?>

<link rel='stylesheet' href='style.css'>

<div class="container">
    <a href="form/" class="btn">Загрузить</a>
    <table>
        <?php if(!empty($allRows)) { ?>
            <?php foreach ($allRows as $row) { ?>   
            <tr>
                <td><?php echo $row['id'] ?>.</td>
                <td><?php if(strlen($row['content'])>100) {  echo mb_strcut($row['content'],0,100) .  '...' ;} else {  echo $row['content'];} ?></td>
                <td><a href="<?php echo 'detail.php/?text_id=' . $row['id'] ?>">Подробнее</a></td>
            </tr>
            <?php } ?> 
    </table>

       <?php }?>

</div>    
<?php

require 'functions.php';



?>

<link rel='stylesheet' href='style.css'>

<div class="container">
    <a href="form/" class="btn">Загрузить</a>
    <table>
        <?php if(!empty($allRows)) { ?>
            <?php foreach ($allRows as $row) { ?>   
            <tr>
                <?php foreach ($row as $key=>$value) { ?>
                     <td><?php echo $key ?></td>
                <?php } ?>

            </tr>
            <?php } ?> 
    </table>

       <?php }?>

</div>    
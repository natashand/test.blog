<?php

use yii\helpers\Url;

?>

<div style="padding-left: 25px", >
    <h1> List tests </h1>
    <div class="body-content">

        <div class="row">
            <?php foreach ($tests as $test): ?>
                <div class="col-lg-4">
                    <h2><?=$test->name; ?></h2>

                    <img src="<?= $test->getImage(); ?>" style="height:200px; max-width: 100%;">

                    <p><a class="btn btn-default" href="<?= Url::toRoute(['site/test', 'id' => $test->id]);?>">Пройти тест »</a></p>
                </div>
            <?php  endforeach; ?>
        </div>

</div>



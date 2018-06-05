<?php

use yii\helpers\Url;
use yii\widgets\LinkPager;

?>

<div class="container-fluid container-90">
    <div class="row">
        <?php foreach ($articles as $article): ?>

            <div class="col-md-3">
                <div class="post-preview">
                    <a href="#">
                        <p class="post-meta"><?= $article->dateCreate; ?></p>
                        <img class="img-responsive" src="<?= $article->getImage() ?>">
                        <h3 class="post-title"><?= $article->name; ?></h3>
                        <p><span style="font-size: medium; "><?= $article->description; ?></p>
                    </a>
                </div>
            </div>
        <?php endforeach; ?>

    </div>
    <div class="row">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <?php for($i=1; $i<=$pagination; $i++):?>
                    <li><a href="<?=Url::to(['site/article', 'page'=>$i])?>"><?=$i?></a></li>
                <?php endfor; ?>
            </ul>
        </nav>
    </div>
</div>

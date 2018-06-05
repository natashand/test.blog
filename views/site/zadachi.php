<?php

use yii\helpers\Url;

?>
<!-- Post Content -->
    <div class="container">
        <div class="row">
            <?php foreach ($tests as $test): ?>
                <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

                    <h2 class="section-heading"><?= $test->name; ?></h2>

                    <?php foreach ($questions as $question):

                        if (($question->testID) == ($test->id)) { ?>

                            <p><?= $question->question; ?> </p>

                            <img src="<?= $test->getImage() ?>" alt="" >

                            <div class="post-thumb">
                                <a href="<?= Url::toRoute(['site/answer', 'id' => $question->id]); ?>"
                                   class="post-thumb-overlay text-center">
                                    <div>Показать ответ</div>
                                </a>
                            </div>
                            <h4>Ответ: </h4>
                            <p><?= $answers->answer; ?> </p>

                        <?php } ?>

                    <?php endforeach; ?>

                </div>
            <?php endforeach; ?>

        </div>

        <div class="row">
            <nav aria-label="Page navigation">
                <ul class="pagination">
                    <?php for($i=1; $i<=$pagination; $i++):?>
                        <li><a href="<?=Url::to(['site/zadachi', 'page'=>$i])?>"><?=$i?></a></li>
                    <?php endfor; ?>
                </ul>
            </nav>
        </div>

    </div>




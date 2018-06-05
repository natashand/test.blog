<?php

use yii\helpers\Url;

?>
<!-- Post Content -->
<div class="container">
    <div class="row">

        <div class="col-lg-8 col-lg-offset-2 col-md-10 col-md-offset-1">

            <h2 class="section-heading"><?= $questions->test->name; ?></h2>

            <p><?= $questions->question; ?> </p>


                <img src="<?= $questions -> test->getImage() ?>" alt="" >
            <div class="post-thumb">
                <a href="<?= Url::toRoute(['site/answer', 'id' => $question->id]); ?>"
                   class="post-thumb-overlay text-center">
                    <div>Показать ответ</div>
                </a>
            </div>
            <h4>Ответ: </h4>
            <p><?= $answers->answer; ?> </p>

        </div>

    </div>

    <div class="row">
        <nav aria-label="Page navigation">
            <ul class="pagination">
                <?php for ($i = 1;
                           $i <= $pagination;
                           $i++): ?>
                    <li><a href="<?= Url::to(['site/zadachi', 'page' => $i]) ?>"><?= $i ?></a></li>
                <?php endfor; ?>
            </ul>
        </nav>
    </div>

</div>




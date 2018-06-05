<?php

use app\models\Questions;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\widgets\ActiveForm;


?>
<!-- Post Content -->
<div class="container">

    <div class="row">
        <?php if (!Yii::$app->user->isGuest): ?>

            <h1 class="section-heading"><?= $tests->name; ?></h1>

            <img src="<?= $tests->getImage(); ?>" style="height:200px; max-width: 100%;">

            <?php $form = \yii\widgets\ActiveForm::begin([
            'action' => ['site/result', 'id' => $tests->id],
            'options' => ['class' => 'form-horizontal contact-form', 'role' => 'form']]) ?>
            <?php foreach ($questions as $question): ?>

                <h3><?= $question->question; ?> </h3>

                <?php foreach ($answers as $answer):

                    if (($answer->questionID) == ($question->id)) { ?>

                        <label class="checkbox-inline">
                            <input type="radio" id="<?php $answer->id ?>" name="<?= $question->id ?>"
                                   value="<?= $answer->id ?>"> <?= $answer->answer ?>
                        </label>


                    <?php } ?>

                <?php endforeach; ?>

            <?php endforeach; ?>
            <button class="btn btn-sm btn-success" href="<?= Url::toRoute(['site/result']) ?>" type="submit">Проверить
            </button>
            <?php \yii\widgets\ActiveForm::end(); ?>

        <?php endif; ?>
    </div>

</div>




<?php

use app\models\Answers;
use app\models\Questions;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Answers */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="answers-form">

    <?php $question = ArrayHelper::map(Questions::find()->all(), 'id', 'question'); ?>

    <?php $answer = [0 => 'Не верно', 1 => 'Верно'] ?>

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'questionID')->dropDownList($question, ['class'=>'form-control']) ?>

    <?= $form->field($model, 'answer')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'right_ans')->dropDownList($answer, ['class'=>'form-control']) ?>

    <div class="form-group">

        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>

    </div>

    <?php ActiveForm::end(); ?>

</div>

<?php

use app\models\Categories;
use yii\helpers\ArrayHelper;
use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Tests */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="tests-form">
    <?php $categories = ArrayHelper::map(Categories::find()->all(), 'id', 'name');?>

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'categoryID')->dropDownList($categories, ['prompt'=>"Выбор категории"]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

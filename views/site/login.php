<?php

/* @var $this yii\web\View */
/* @var $form yii\bootstrap\ActiveForm */
/* @var $model app\models\LoginForm */

use yii\helpers\Html;
use yii\bootstrap\ActiveForm;

$this->title = 'Entrar';
$this->params['breadcrumbs'][] = $this->title;

$this->registerCss("
    .site-login{
        width: 100%;
        max-width: 330px;
        padding: 15px;
        margin: auto;
    }
    .atacado-checkbox{
        position: absolute;
        margin-left: 40px;
    }
    label{
        width: unset !important;
        padding-left: unset !important;
    }
    .header{
        color: #2477bf;
    }
");

?>
<div class="site-login">
    <h1 class="header">Simples Atacado</h2>
    <h3><?= Html::encode($this->title) ?></h3>
    <?php $form = ActiveForm::begin([
        'id' => 'login-form',
        'layout' => 'horizontal',
        'fieldConfig' => [
            'template' => "{label}\n{input}\n{error}",
        ],
    ]); ?>

        <?= $form->field($model, 'username')->textInput(['autofocus' => true]) ?>

        <?= $form->field($model, 'password')->passwordInput() ?>

        <?= $form->field($model, 'rememberMe')->checkbox([
            'template' => "<div class=\"atacado-checkbox\">{input}</div> {label}</div>\n<div class=\"col-lg-8\">{error}",
        ]) ?>

        <div class="form-group">
            <?= Html::submitButton('Entrar', ['class' => 'btn btn-lg btn-primary btn-block', 'name' => 'login-button']) ?>
        </div>

    <?php ActiveForm::end(); ?>

</div>

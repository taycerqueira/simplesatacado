<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Embalagem */

$this->title = 'Cadastrar Embalagem';
$this->params['breadcrumbs'][] = ['label' => 'Embalagens', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="embalagem-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

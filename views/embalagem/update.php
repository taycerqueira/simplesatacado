<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Embalagem */

$this->title = 'Editar Embalagem: ' . $model->descricao;
$this->params['breadcrumbs'][] = ['label' => 'Embalagens', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->descricao, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Editar';
?>
<div class="embalagem-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

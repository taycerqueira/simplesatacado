<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Produto */

$this->title = 'Editar Produto: ' . $model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Produtos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nome, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="produto-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'modelProduto'              => $modelProduto,
        'modelProdutoEspecificado'  => $modelProdutoEspecificado,
    ]) ?>

</div>

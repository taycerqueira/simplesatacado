<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Produto */

$this->title = 'Produto: '.$model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Produtos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="produto-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nome',
            [
                'attribute' => 'idEmbalagem',
                'value'     => $model->getIdEmbalagem0()->one()->descricao,
            ],
            [
                'attribute' => 'idMarca',
                'value'     => $model->idMarca ? $model->getIdMarca0()->one()->nome : "(sem marca)",
            ],
            [
                'attribute' => 'idCategoriaProduto',
                'value'     => $model->getIdCategoriaProduto0()->one()->nome,
            ],
            ['attribute' => 'preco_custo',  'format' => ['currency']],
            ['attribute' => 'preco_venda',  'format' => ['currency']],
            ['attribute' => 'criado',       'format' => ['date', 'dd/MM/yyyy H:i:s']],
            ['attribute' => 'modificado',   'format' => ['date', 'dd/MM/yyyy H:i:s']],
        ],
    ]) ?>

    <p class="pull-right">
        <?= Html::a('Editar', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Excluir', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Tem certeza que deseja excluir o produto '.$model->nome,
                'method' => 'post',
            ],
        ]) ?>
    </p>

</div>

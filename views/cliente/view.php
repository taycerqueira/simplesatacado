<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */

$this->title = $model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Clientes', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="cliente-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nome',
            [
                'attribute' => 'cnpj',
                'value'     => empty($model->cnpj) ? '(não informado)' : $model->cnpj,
            ],
            [
                'attribute' => 'idCidade',
                'value'     => $model->getIdCidade0()->one()->nome,
            ],
            'endereco',
            [
                'attribute' => 'telefone',
                'value'     => implode(", ", $model->telefone)
            ],
            'observacoes',
            ['attribute' => 'criado',       'format' => ['date', 'dd/MM/yyyy H:i:s']],
            ['attribute' => 'modificado',   'format' => ['date', 'dd/MM/yyyy H:i:s']],
        ],
    ]) ?>

    <p style="float: right">
        <?= Html::a('Editar', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Excluir', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Tem certeza que deseja excluir este cliente?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

</div>

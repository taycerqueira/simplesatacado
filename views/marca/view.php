<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Marca */

$this->title = 'Marca: '.$model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Marcas', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="marca-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nome',
            ['attribute' => 'criado',       'format' => ['date', 'dd/MM/yyyy H:i:s']],
            ['attribute' => 'modificado',   'format' => ['date', 'dd/MM/yyyy H:i:s']],
        ],
    ]) ?>

    <p class="pull-right">
        <?= Html::a('Editar', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Excluir', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Tem certeza que deseja excluir a marca '.$model->nome.'?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

</div>

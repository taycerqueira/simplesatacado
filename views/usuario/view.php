<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Usuario */

$this->title = $model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Usuários', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="usuario-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'nome',
            'login',
            [
                'attribute' => 'ativo',
                'format' => 'html',
                'value' => $model->ativo ? '<span class="label label-primary">Ativo</span>' : '<span class="label label-danger">Inativo</span>'
            ],
            ['attribute' => 'criado',       'format' => ['date', 'dd/MM/yyyy H:i:s']],
            ['attribute' => 'modificado',   'format' => ['date', 'dd/MM/yyyy H:i:s']],
        ],
    ]) ?>

    <p class="pull-right">
        <?= Html::a('Editar', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Excluir', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Deseja realmente excluir este usuário?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

</div>

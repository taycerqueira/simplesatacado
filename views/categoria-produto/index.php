<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\CategoriaProdutoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Categorias de Produto';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="categoria-produto-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cadastrar Categoria', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute'         => 'id',
                'headerOptions'     => ['style' => 'width: 5%;']
            ],
            'nome',
            [
                'attribute' => 'criado',
                'format'    => ['date', 'dd/MM/yyyy H:i:s'],
                'headerOptions'     => ['style' => 'width: 10%;']
            ],

            [
                'class' => 'yii\grid\ActionColumn',
                'headerOptions'     => ['style' => 'width: 10%;']
            ],
        ],
    ]); ?>


</div>

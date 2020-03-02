<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\EmbalagemSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Embalagens';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="embalagem-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cadastrar Embalagem', ['create'], ['class' => 'btn btn-success']) ?>
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
            'descricao',
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

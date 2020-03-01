<?php

use yii\helpers\Html;
use yii\grid\GridView;
use app\models\Cidade;
use yii\helpers\ArrayHelper;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ClienteSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Clientes';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="cliente-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cadastrar Cliente', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute' => 'id',
                'headerOptions' => ['style' => 'width: 5%'],
            ],
            'nome',
            'cnpj',
            [
                'attribute' => 'idCidade',
                'filter'    => ArrayHelper::map(Cidade::find()->asArray()->all(), 'id', 'nome'),
                'value'     => function($data){
                    return $data->getIdCidade0()->one()->nome;
                }
            ],
            'endereco',
            [
                'attribute' => 'telefone',
                'value'     => function($data){
                    return implode(", ", $data->telefone);
                }
            ],
            'observacoes',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>

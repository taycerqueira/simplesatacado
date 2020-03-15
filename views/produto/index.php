<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\ArrayHelper;
use app\models\CategoriaProduto;
use app\models\Marca;
use app\models\Embalagem;


/* @var $this yii\web\View */
/* @var $searchModel app\models\ProdutoSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Produtos';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="produto-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cadastrar Produto', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            [
                'attribute'         => 'id',
                'headerOptions'     => ['style' => 'width: 5%;']
            ],            'nome',
            [
                'attribute' => 'idEmbalagem',
                'filter'    => ArrayHelper::map(Embalagem::find()->asArray()->all(), 'id', 'descricao'),
                'value'     => function($data){
                    return $data->getIdEmbalagem0()->one()->descricao;
                }
            ], 
            [
                'attribute' => 'idMarca',
                'filter'    => ArrayHelper::map(Marca::find()->asArray()->all(), 'id', 'nome'),
                'value'     => function($data){
                    return $data->idMarca ? $data->getIdMarca0()->one()->nome : "(sem marca)";
                }
            ], 
            [
                'attribute' => 'idCategoriaProduto',
                'filter'    => ArrayHelper::map(CategoriaProduto::find()->asArray()->all(), 'id', 'nome'),
                'value'     => function($data){
                    return $data->getIdCategoriaProduto0()->one()->nome;
                }
            ], 
            [
                'attribute'         => 'preco_custo',
                'format'            => 'currency',
                'headerOptions'     => ['style' => 'width: 5%;']
            ],             
            [
                'attribute'         => 'preco_venda',
                'format'            => 'currency',
                'headerOptions'     => ['style' => 'width: 5%;']
            ], 

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>

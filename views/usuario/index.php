<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\UsuarioSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Usuários';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="usuario-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Cadastrar usuário', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        //'filterModel' => $searchModel,
        'columns' => [
            'id',
            'nome',
            'login',
            ['attribute' => 'criado', 'format' => ['date', 'd/m/Y H:i:s']],
            ['attribute' => 'modificado', 'format' => ['date', 'd/m/Y H:i:s']],
            [
                'attribute' => 'ativo',
                'format' => 'html',
                'value' => function($data){
                    return $data->ativo ? '<span class="label label-primary">Ativo</span>' : '<span class="label label-danger">Inativo</span>';
                }
            ],

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>


</div>

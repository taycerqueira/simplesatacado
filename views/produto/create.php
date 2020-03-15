<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Produto;
use app\models\CategoriaProduto;
use app\models\Marca;
use app\models\Embalagem;
use kartik\number\NumberControl;

/* @var $this yii\web\View */
/* @var $model app\models\Produto */
/* @var $this yii\web\Controller */

$this->registerJs('
    $("#produto-tipo").change(function(){
        if($(this).find("option:selected").val() == "P"){
            $(".panel-produto").show();
            $(".panel-especificacao").hide();
        }
        else{
            $(".panel-produto").hide();
            $(".panel-especificacao").show();
        }
    });
');

$this->title = 'Cadastrar Produto';
$this->params['breadcrumbs'][] = ['label' => 'Produtos', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;

?>
<div class="produto-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <div class="produto-form">

    <?php $form = ActiveForm::begin([
        'enableClientValidation'    =>  false
        ]); ?>

    <div class="row">
        <div class="col-md-4">
        <?= $form->field($modelProduto, 'tipo')->dropDownList([
            'P' => 'Cadastrar novo produto',
            'E' => 'Adicionar especificação a um produto que já existe'
        ]); ?>
        </div>
    </div>

    <div class="panel panel-default panel-produto" style="display: <?= $modelProduto->tipo == 'E' ? 'none' : 'block' ?>">
        <div class="panel-heading">
            <h3 class="panel-title">Novo Produto</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-6">
                    <?= $form->field($modelProduto, 'idCategoriaProduto')->widget(Select2::classname(), [    
                        'data' => ArrayHelper::map(CategoriaProduto::find()->all(), 'id', 'nome'),
                        'options' => ['placeholder' => 'Selecione uma categoria...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]); ?>
                </div>
                <div class="col-md-6">
                    <?= $form->field($modelProduto, 'idMarca')->widget(Select2::classname(), [    
                        'data' => ArrayHelper::map(Marca::find()->all(), 'id', 'nome'),
                        'options' => ['placeholder' => 'Selecione uma marca...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]); ?>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <?= $form->field($modelProduto, 'nome')->textInput([
                            'maxlength' => true,
                            'style' => 'text-transform: uppercase'
                        ]) ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($modelProduto, 'idEmbalagem')->widget(Select2::classname(), [    
                        'data' => ArrayHelper::map(Embalagem::find()->all(), 'id', 'descricao'),
                        'options' => ['placeholder' => 'Selecione uma embalagem...'],
                        'pluginOptions' => [
                            'allowClear' => true
                        ],
                    ]); ?>
                </div>
                <div class="col-md-2">
                    <?= $form->field($modelProduto, 'preco_custo', [
                            'addon' => ['prepend' => ['content' => 'R$']]
                    ])->widget(NumberControl::classname(), [
                        'maskedInputOptions' => [
                            'allowMinus' => false,
                            'alias' => 'currency',
                            'prefix' => "",
                        ],
                    ]) ?>
                </div>
                <div class="col-md-2">
                <?= $form->field($modelProduto, 'preco_venda', [
                            'addon' => ['prepend' => ['content' => 'R$']]
                    ])->widget(NumberControl::classname(), [
                        'maskedInputOptions' => [
                            'allowMinus' => false,
                            'alias' => 'currency',
                            'prefix' => "",
                        ],
                    ]) ?>
                </div>
            </div>
        </div>
    </div>

    <div class="panel panel-default panel-especificacao" style="display: <?= $modelProduto->tipo == 'P' ? 'none' : 'block' ?>">
        <div class="panel-heading">
            <h3 class="panel-title">Nova Especificação</h3>
        </div>
        <div class="panel-body">
            <div class="row">
                <div class="col-md-4">
                <?= $form->field($modelProdutoEspecificado, 'idProduto')->widget(Select2::classname(), [    
                    'data' => ArrayHelper::map(Produto::find()->all(), 'id', 'nome'),
                    'options' => ['placeholder' => 'Selecione um produto...'],
                    'pluginOptions' => [
                        'allowClear' => true
                    ],
                ]); ?>
                </div>
                <div class="col-md-8">
                    <?= $form->field($modelProdutoEspecificado, 'especificacao')->textInput([
                            'maxlength' => true,
                            'style' => 'text-transform: uppercase'
                        ]) ?>
                </div>
            </div>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Salvar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

    </div>

</div>

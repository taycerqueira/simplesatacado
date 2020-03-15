<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\CategoriaProduto;
use app\models\Marca;
use app\models\Embalagem;
use kartik\number\NumberControl;

/* @var $this yii\web\View */
/* @var $model app\models\Produto */

$this->title = 'Editar Produto: ' . $model->nome;
$this->params['breadcrumbs'][] = ['label' => 'Produtos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->nome, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>

<div class="produto-update">

<h1><?= Html::encode($this->title) ?></h1>

<div class="produto-form">

    <?php $form = ActiveForm::begin([
        'enableClientValidation'    =>  false
        ]); ?>

    <div class="row">
        <div class="col-md-6">
            <?= $form->field($model, 'idCategoriaProduto')->widget(Select2::classname(), [    
                'data' => ArrayHelper::map(CategoriaProduto::find()->all(), 'id', 'nome'),
                'options' => ['placeholder' => 'Selecione uma categoria...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
        </div>
        <div class="col-md-6">
            <?= $form->field($model, 'idMarca')->widget(Select2::classname(), [    
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
            <?= $form->field($model, 'nome')->textInput([
                    'maxlength' => true,
                    'style' => 'text-transform: uppercase'
                ]) ?>
        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'idEmbalagem')->widget(Select2::classname(), [    
                'data' => ArrayHelper::map(Embalagem::find()->all(), 'id', 'descricao'),
                'options' => ['placeholder' => 'Selecione uma embalagem...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
        </div>
        <div class="col-md-2">
            <?= $form->field($model, 'preco_custo', [
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
        <?= $form->field($model, 'preco_venda', [
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

    <div class="form-group">
        <?= Html::submitButton('Salvar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>

</div>


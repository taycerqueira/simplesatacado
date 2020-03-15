<?php

use yii\helpers\Html;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use yii\helpers\ArrayHelper;
use app\models\Produto;

/* @var $this yii\web\View */
/* @var $model app\models\Produto */

$this->title = 'Editar Especificação de Produto: ' . $model->nome;
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
            <div class="col-md-4">
            <?= $form->field($modelProdutoEspecificado, 'idProduto')->widget(Select2::classname(), [    
                'data' => ArrayHelper::map(Produto::find()->all(), 'id', 'nome'),
                'options' => ['placeholder' => 'Selecione um produto...'],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ]); ?>
            </div>
        </div>

        <div class="form-group">
            <?= Html::submitButton('Salvar', ['class' => 'btn btn-success']) ?>
        </div>

        <?php ActiveForm::end(); ?>
    </div>

</div>
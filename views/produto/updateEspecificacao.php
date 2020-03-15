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

$this->title = 'Editar Especificação de Produto';
$this->params['breadcrumbs'][] = ['label' => 'Produtos', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $produto->nome, 'url' => ['view', 'id' => $produto->id]];
$this->params['breadcrumbs'][] = ['label' => $model->especificacao, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Editar';
?>

<div class="produto-update">

<h1><?= Html::encode($this->title) ?></h1>

<div class="produto-form">

    <?php $form = ActiveForm::begin([
        'enableClientValidation'    =>  false
        ]); ?>

    <div class="row">
        <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">Produto</label>
                <p class="form-control-static"><?= $produto->nome ?></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">Embalagem</label>
                <p class="form-control-static"><?= $produto->getIdEmbalagem0()->one()->descricao ?></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">Marca</label>
                <p class="form-control-static"><?= $produto->getIdMarca0()->one()->nome ?></p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="form-group">
                <label class="control-label">Categoria</label>
                <p class="form-control-static"><?= $produto->getIdCategoriaProduto0()->one()->nome ?></p>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <?= $form->field($model, 'especificacao')->textInput([
                    'maxlength' => true,
                    'style' => 'text-transform: uppercase'
                ]) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Salvar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
</div>

</div>


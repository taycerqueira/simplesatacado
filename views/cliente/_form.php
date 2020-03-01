<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use yii\helpers\ArrayHelper;
use app\models\Cidade;
use kartik\select2\Select2;
use unclead\multipleinput\MultipleInput;

/* @var $this yii\web\View */
/* @var $model app\models\Cliente */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="cliente-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-md-6">
        <?= $form->field($model, 'nome')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-md-3">
        <?= $form->field($model, 'cnpj')->widget(\yii\widgets\MaskedInput::className(), [
            'mask' => '99.999.999/9999-99',
        ])  ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-3">
        <?= $form->field($model, 'idCidade')->widget(Select2::classname(), [    
            'data' => ArrayHelper::map(Cidade::find()->all(), 'id', 'nome'),
            'options' => ['placeholder' => 'Selecione uma cidade...'],
            'pluginOptions' => [
                'allowClear' => true
            ],
        ]); ?>
        </div>
        <div class="col-md-6">
        <?= $form->field($model, 'endereco')->textInput(['maxlength' => true]) ?>
        </div>
    </div>


    <div class="row">
        <div class="col-md-3">
        <?= $form->field($model, 'telefone')->widget(MultipleInput::className(), [
            'max'               => 6,
            'min'               => 1, 
            'allowEmptyList'    => false,
            'enableGuessTitle'  => true,
            'columns' => [
                [
                    'name'          => 'telefone',
                    'title'         => $model->getAttributeLabel('telefone'),
                    'type'          => \yii\widgets\MaskedInput::className(),
                    'options'       => [
                        'mask'      => '(99) 99999{0,1}-9999',
                        'options'   => [
                            'class' => 'form-control input-telefone'
                        ]
                    ],
                ],
            ],
        ])->label(false);
        ?>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
        <?= $form->field($model, 'observacoes')->textarea(['maxlength' => true]) ?>
        </div>
    </div>

    <div class="form-group">
        <?= Html::submitButton('Salvar', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

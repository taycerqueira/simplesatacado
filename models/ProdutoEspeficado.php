<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "produto_especificado".
 *
 * @property int $id
 * @property int $idProduto
 * @property string $especificacao
 * @property int $padrao
 * @property string $criado
 * @property string $modificado
 *
 * @property Produto $idProduto0
 */
class ProdutoEspeficado extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'produto_especificado';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idProduto', 'especificacao'], 'required'],
            [['idProduto', 'padrao'], 'integer'],
            [['criado', 'modificado'], 'safe'],
            [['especificacao'], 'string', 'max' => 255],
            [['idProduto'], 'exist', 'skipOnError' => true, 'targetClass' => Produto::className(), 'targetAttribute' => ['idProduto' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idProduto' => 'Produto',
            'especificacao' => 'Especificação',
            'padrao' => 'Padrao',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    /**
     * Gets query for [[IdProduto0]].
     *
     * @return \yii\db\ActiveQuery|ProdutoQuery
     */
    public function getIdProduto0()
    {
        return $this->hasOne(Produto::className(), ['id' => 'idProduto']);
    }

    /**
     * {@inheritdoc}
     * @return ProdutoEspecificadoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProdutoEspecificadoQuery(get_called_class());
    }
}

<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "categoria_produto".
 *
 * @property int $id
 * @property string $nome
 * @property string $criado
 * @property string $modificado
 */
class CategoriaProduto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'categoria_produto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nome'], 'required'],
            [['criado', 'modificado'], 'safe'],
            [['nome'], 'string', 'max' => 255],
            [['nome'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'nome' => 'Nome',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    /**
     * {@inheritdoc}
     * @return CategoriaProdutoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new CategoriaProdutoQuery(get_called_class());
    }
}

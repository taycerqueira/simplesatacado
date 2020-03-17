<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "marca".
 *
 * @property int $id
 * @property string $nome
 * @property string $criado
 * @property string $modificado
 */
class Marca extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'marca';
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

    public function beforeSave($insert)
    {
        if(!parent::beforeSave($insert)){
            return false;
        }
        $this->nome = strtoupper($this->nome);
        return true;
    }

    /**
     * {@inheritdoc}
     * @return MarcaQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new MarcaQuery(get_called_class());
    }
}

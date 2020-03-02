<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "embalagem".
 *
 * @property int $id
 * @property string $descricao
 * @property string $criado
 * @property string $modificado
 */
class Embalagem extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'embalagem';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['descricao'], 'required'],
            [['criado', 'modificado'], 'safe'],
            [['descricao'], 'string', 'max' => 20],
            [['descricao'], 'unique'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'descricao' => 'Descrição',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    /**
     * {@inheritdoc}
     * @return EmbalagemQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new EmbalagemQuery(get_called_class());
    }
}

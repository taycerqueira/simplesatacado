<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cidade".
 *
 * @property int $id
 * @property string $nome
 * @property string $uf
 * @property string $criado
 * @property string $modificado
 *
 * @property Cliente[] $clientes
 */
class Cidade extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cidade';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nome', 'uf'], 'required'],
            [['criado', 'modificado'], 'safe'],
            [['nome'], 'string', 'max' => 255],
            [['uf'], 'string', 'max' => 2],
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
            'uf' => 'Uf',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    /**
     * Gets query for [[Clientes]].
     *
     * @return \yii\db\ActiveQuery
     */
    public function getClientes()
    {
        return $this->hasMany(Cliente::className(), ['idCidade' => 'id']);
    }
}

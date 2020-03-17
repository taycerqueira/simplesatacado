<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "produto".
 *
 * @property int $id
 * @property int $idCategoriaProduto
 * @property int|null $idMarca
 * @property int $idEmbalagem
 * @property string $nome
 * @property float $preco_custo
 * @property float $preco_venda
 * @property string $criado
 * @property string $modificado
 *
 * @property CategoriaProduto $idCategoriaProduto0
 * @property Embalagem $idEmbalagem0
 * @property Marca $idMarca0
 */
class Produto extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'produto';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idCategoriaProduto', 'idEmbalagem', 'nome', 'preco_custo', 'preco_venda'], 'required'],
            [['idCategoriaProduto', 'idMarca', 'idEmbalagem'], 'integer'],
            [['preco_custo', 'preco_venda'], 'number'],
            [['criado', 'modificado'], 'safe'],
            [['nome'], 'string', 'max' => 255],
            [['nome'], 'unique'],
            [['idCategoriaProduto'], 'exist', 'skipOnError' => true, 'targetClass' => CategoriaProduto::className(), 'targetAttribute' => ['idCategoriaProduto' => 'id']],
            [['idEmbalagem'], 'exist', 'skipOnError' => true, 'targetClass' => Embalagem::className(), 'targetAttribute' => ['idEmbalagem' => 'id']],
            [['idMarca'], 'exist', 'skipOnError' => true, 'targetClass' => Marca::className(), 'targetAttribute' => ['idMarca' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idCategoriaProduto' => 'Categoria',
            'idMarca' => 'Marca',
            'idEmbalagem' => 'Embalagem',
            'nome' => 'Nome',
            'preco_custo' => 'Preço de custo',
            'preco_venda' => 'Preço de venda',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    public function afterFind()
    {
        parent::afterFind();
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
     * Gets query for [[IdCategoriaProduto0]].
     *
     * @return \yii\db\ActiveQuery|CategoriaProdutoQuery
     */
    public function getIdCategoriaProduto0()
    {
        return $this->hasOne(CategoriaProduto::className(), ['id' => 'idCategoriaProduto']);
    }

    /**
     * Gets query for [[IdEmbalagem0]].
     *
     * @return \yii\db\ActiveQuery|EmbalagemQuery
     */
    public function getIdEmbalagem0()
    {
        return $this->hasOne(Embalagem::className(), ['id' => 'idEmbalagem']);
    }

    /**
     * Gets query for [[IdMarca0]].
     *
     * @return \yii\db\ActiveQuery|MarcaQuery
     */
    public function getIdMarca0()
    {
        return $this->hasOne(Marca::className(), ['id' => 'idMarca']);
    }

    /**
     * {@inheritdoc}
     * @return ProdutoQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ProdutoQuery(get_called_class());
    }
}

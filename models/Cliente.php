<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "cliente".
 *
 * @property int $id
 * @property int|null $idCidade
 * @property string $nome
 * @property string|null $endereco
 * @property string|null $telefone
 * @property string|null $cnpj
 * @property string|null $observacoes
 * @property string $criado
 * @property string $modificado
 *
 * @property Cidade $idCidade0
 */
class Cliente extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'cliente';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['idCidade'], 'integer'],
            [['nome'], 'required'],
            [['nome', 'endereco', 'observacoes'], 'string', 'max' => 500],
            [['cnpj'], 'string', 'max' => 20],
            [['telefone'], 'safe'],
            [['idCidade'], 'exist', 'skipOnError' => true, 'targetClass' => Cidade::className(), 'targetAttribute' => ['idCidade' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'idCidade' => 'Cidade',
            'nome' => 'Nome',
            'endereco' => 'Endereço',
            'telefone' => 'Telefone',
            'cnpj' => 'CNPJ',
            'observacoes' => 'Observações',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    public function beforeSave($insert){
        if (!parent::beforeSave($insert)){
            return false;
        }
        $this->nome = strtoupper($this->nome);
        if(is_array($this->telefone)){
            $this->telefone = implode(",", $this->telefone);
        }
        $this->telefone = self::getOnlyNumbers($this->telefone);
        $this->cnpj = self::getOnlyNumbers($this->cnpj);
        return true;
    }

    public function afterFind(){
        parent::afterFind();
        $this->formatPhone();
        $this->formatCnpj();
        return true;
    }

    /**
     * Gets query for [[IdCidade0]].
     *
     * @return \yii\db\ActiveQuery|yii\db\ActiveQuery
     */
    public function getIdCidade0()
    {
        return $this->hasOne(Cidade::className(), ['id' => 'idCidade']);
    }

    /**
     * {@inheritdoc}
     * @return ClienteQuery the active query used by this AR class.
     */
    public static function find()
    {
        return new ClienteQuery(get_called_class());
    }

    private static function getOnlyNumbers($value){
        $value = str_replace("(", "", $value);
        $value = str_replace(")", "", $value);
        $value = str_replace("-", "", $value);
        $value = str_replace(" ", "", $value);
        $value = str_replace("_", "", $value);
        $value = str_replace(".", "", $value);
        $value = str_replace("/", "", $value);
        return $value;
    }

    private function formatPhone(){
        $telefones = explode(",", $this->telefone);
        for ($i = 0; $i < count($telefones); $i++){  
            $formatedPhone = preg_replace('/[^0-9]/', '', $telefones[$i]);
            $matches = [];
            preg_match('/^([0-9]{2})([0-9]{4,5})([0-9]{4})$/', $formatedPhone, $matches);
            if ($matches) {
                $telefones[$i] = '('.$matches[1].') '.$matches[2].'-'.$matches[3];
            }
        }
        $this->telefone = $telefones;
    }

    private function formatCnpj(){
        $this->cnpj = preg_replace("/(\d{2})(\d{3})(\d{3})(\d{4})(\d{2})/", "\$1.\$2.\$3/\$4-\$5", $this->cnpj);
    }

}

<?php

namespace app\models;

use Yii;
use yii\web\IdentityInterface;

/**
 * This is the model class for table "usuario".
 *
 * @property int $id
 * @property string $nome
 * @property string $login
 * @property string $senha
 * @property int $ativo
 * @property string $criado
 * @property string $modificado
 */
class Usuario extends \yii\db\ActiveRecord implements IdentityInterface
{

    public $authKey;

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'usuario';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['nome', 'login', 'senha'], 'required'],
            [['login'], 'unique'],
            [['ativo'], 'integer'],
            [['ativo'], 'default', 'value' => 1],
            [['criado', 'modificado'], 'safe'],
            [['nome', 'senha'], 'string', 'max' => 255, 'min' => 4],
            [['login'], 'string', 'max' => 50],
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
            'login' => 'Login',
            'senha' => 'Senha',
            'ativo' => 'Ativo',
            'criado' => 'Criado',
            'modificado' => 'Modificado',
        ];
    }

    /**
     * Localiza uma identidade pelo ID informado
     *
     * @param string|int $id o ID a ser localizado
     * @return IdentityInterface|null o objeto da identidade que corresponde ao ID informado
     */
    public static function findIdentity($id){
        return static::findOne($id);
    }

    /**
     * Localiza uma identidade pelo token informado
     *
     * @param string $token o token a ser localizado
     * @return IdentityInterface|null o objeto da identidade que corresponde ao token informado
     */
    public static function findIdentityByAccessToken($token, $type = null){
        return null;
    }

    /**
     * @return int|string o ID do usuário atual
     */
    public function getId(){
        return $this->id;
    }

    /**
     * Validates password
     *
     * @param string $password password to validate
     * @return bool if password provided is valid for current user
     */
    public function validatePassword($password){
        return $this->senha === md5($password);
    }

    /**
     * {@inheritdoc}
     */
    public function getAuthKey(){
        return $this->authKey;
    }

    /**
     * {@inheritdoc}
     */
    public function validateAuthKey($authKey){
        return $this->authKey === $authKey;
    }

}

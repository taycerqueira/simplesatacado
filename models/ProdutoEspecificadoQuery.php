<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[ProdutoEspeficado]].
 *
 * @see ProdutoEspeficado
 */
class ProdutoEspecificadoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return ProdutoEspeficado[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return ProdutoEspeficado|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}

<?php

namespace app\models;

/**
 * This is the ActiveQuery class for [[CategoriaProduto]].
 *
 * @see CategoriaProduto
 */
class CategoriaProdutoQuery extends \yii\db\ActiveQuery
{
    /*public function active()
    {
        return $this->andWhere('[[status]]=1');
    }*/

    /**
     * {@inheritdoc}
     * @return CategoriaProduto[]|array
     */
    public function all($db = null)
    {
        return parent::all($db);
    }

    /**
     * {@inheritdoc}
     * @return CategoriaProduto|array|null
     */
    public function one($db = null)
    {
        return parent::one($db);
    }
}

<?php

namespace app\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use app\models\Produto;

/**
 * ProdutoSearch represents the model behind the search form of `app\models\Produto`.
 */
class ProdutoSearch extends Produto
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'idCategoriaProduto', 'idMarca', 'idEmbalagem'], 'integer'],
            [['nome', 'criado', 'modificado'], 'safe'],
            [['preco_custo', 'preco_venda'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Produto::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'idCategoriaProduto' => $this->idCategoriaProduto,
            'idMarca' => $this->idMarca,
            'idEmbalagem' => $this->idEmbalagem,
            'preco_custo' => $this->preco_custo,
            'preco_venda' => $this->preco_venda,
            'criado' => $this->criado,
            'modificado' => $this->modificado,
        ]);

        $query->andFilterWhere(['like', 'nome', $this->nome]);

        return $dataProvider;
    }
}

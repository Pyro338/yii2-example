<?php

namespace app\models;

use yii\data\ActiveDataProvider;

class PostsSearch extends Posts
{
    public function rules()
    {
        return [
            [['id', 'title', 'description', 'timestamp'], 'safe']
        ];
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
        $query = Posts::find();

        $dataProvider = new ActiveDataProvider([
            'query'      => $query,
            'pagination' => [
                'pageSize' => 10,
            ]
        ]);

        $this->load($params);

        if (!$this->validate()) {
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id'          => $this->id,
            'title'       => $this->title,
            'description' => $this->description,
            'timestamp'   => $this->timestamp
        ]);

        return $dataProvider;
    }
}
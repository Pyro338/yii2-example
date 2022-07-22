<?php

namespace app\models;

use Yii;
use yii\db\ActiveQuery;

class Posts extends \yii\db\ActiveRecord
{
    /**
     * This is the model class for table "posts".
     *
     * @property integer $id
     * @property string  title
     * @property string  $description
     * @property string  $timestamp
     */

    public static function tableName()
    {
        return 'posts';
    }

    public function rules()
    {
        return [
            [['title'], 'required'],
            [['description'], 'string'],
        ];
    }

    public function attributeLabels()
    {
        return [
            'id'          => 'ID',
            'title'       => 'Title',
            'description' => 'Description',
            'timestamp'   => 'Creatd At'
        ];
    }
}
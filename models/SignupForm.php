<?php
/**
 * Created by PhpStorm.
 * User: Oleg
 * Date: 28.05.2018
 * Time: 12:58
 */

namespace app\models;


use yii\base\Model;

class SignupForm extends Model
{
    public $first_name;
    public $last_name;
    public $email;
    public $password;

    public function rules()
    {
        return [
            [['first_name', 'email', 'password'], 'required'],
            [['first_name', 'last_name', 'email', 'password'], 'string', 'max' => 255],
            [['email'], 'unique',  'targetClass'=>'app\models\Students', 'targetAttribute'=>'email']
        ];
    }

    public function signup()
    {
        if ($this->validate()) {
            $students = new Students();
            $students->attributes = $this->attributes;
            return $students->create();
        }
    }

}
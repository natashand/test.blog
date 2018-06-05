<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "passed_tests".
 *
 * @property int $id
 * @property int $studentID
 * @property int $testID
 * @property int $result
 *
 * @property Students $student
 * @property Tests $test
 */
class PassedTests extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'passed_tests';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['studentID', 'testID', 'result'], 'integer'],
            [['studentID'], 'exist', 'skipOnError' => true, 'targetClass' => Students::className(), 'targetAttribute' => ['studentID' => 'id']],
            [['testID'], 'exist', 'skipOnError' => true, 'targetClass' => Tests::className(), 'targetAttribute' => ['testID' => 'id']],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'studentID' => 'Student ID',
            'testID' => 'Test ID',
            'result' => 'Result',
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStudent()
    {
        return $this->hasOne(Students::className(), ['id' => 'studentID']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getTest()
    {
        return $this->hasOne(Tests::className(), ['id' => 'testID']);
    }
}

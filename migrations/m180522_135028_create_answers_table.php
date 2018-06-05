<?php

use yii\db\Migration;

/**
 * Handles the creation of table `answers`.
 */
class m180522_135028_create_answers_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('answers', [
            'id' => $this->primaryKey(),
            'answer' => $this->text(),
            'right_ans' => $this->boolean(),
            'questionID' => $this->integer(),
        ]);
        $this->createIndex(
            'idx-answers-questID',
            'answers',
            'questionID'
        );

        $this->addForeignKey(
            'fk-answers-questID',
            'answers',
            'questionID',
            'questions',
            'id',
            'CASCADE'
        );
    }
    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('answers');
    }
}

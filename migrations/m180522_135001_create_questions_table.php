<?php

use yii\db\Migration;

/**
 * Handles the creation of table `questions`.
 */
class m180522_135001_create_questions_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('questions', [
            'id' => $this->primaryKey(),
            'question' => $this->text(),
            'testID' => $this->integer(),
        ]);
        $this->createIndex(
            'idx-questions-testID',
            'questions',
            'testID'
        );

        $this->addForeignKey(
            'fk-tests-testID',
            'questions',
            'testID',
            'tests',
            'id',
            'CASCADE'
        );
    }
    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('questions');
    }
}

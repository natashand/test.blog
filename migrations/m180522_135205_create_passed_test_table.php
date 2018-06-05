<?php

use yii\db\Migration;

/**
 * Handles the creation of table `passed_test`.
 */
class m180522_135205_create_passed_test_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('passed_tests', [
            'id' => $this->primaryKey(),
            'studentID' => $this->integer(),
            'testID' => $this->integer(),
            'result' => $this->integer(),
        ]);
        $this->createIndex(
            'idx-passed_tests-testID',
            'passed_tests',
            'testID'
        );

        $this->addForeignKey(
            'fk-passed_tests-testID',
            'passed_tests',
            'testID',
            'tests',
            'id',
            'CASCADE'
        );
        $this->createIndex(
            'idx-passed_tests-studentID',
            'passed_tests',
            'studentID'
        );

        $this->addForeignKey(
            'fk-passed_tests-studentID',
            'passed_tests',
            'studentID',
            'students',
            'id',
            'CASCADE'
        );
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('passed_test');
    }
}

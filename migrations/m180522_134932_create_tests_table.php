<?php

use yii\db\Migration;

/**
 * Handles the creation of table `tests`.
 */
class m180522_134932_create_tests_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('tests', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),
            'image' => $this->string(),
            'categoryID' => $this->integer(),
        ]);
        $this->createIndex(
            'idx-tests-catID',
            'tests',
            'categoryID'
        );

        $this->addForeignKey(
            'fk-tests-catID',
            'tests',
            'categoryID',
            'categories',
            'id',
            'CASCADE'
        );

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('tests');
    }
}

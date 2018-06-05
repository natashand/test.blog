<?php

use yii\db\Migration;

/**
 * Handles the creation of table `students`.
 */
class m180522_135129_create_students_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('students', [
            'id' => $this->primaryKey(),
            'first_name' => $this->string(),
            'last_name' => $this->string(),
            'email' => $this->string()->notNull()->unique(),
            'password' => $this->string()->notNull(),
        ]);
    }


    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('students');
    }
}

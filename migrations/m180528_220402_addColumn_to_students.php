<?php

use yii\db\Migration;

/**
 * Class m180528_220402_addColumn_to_students
 */
class m180528_220402_addColumn_to_students extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('students','isAdmin', $this->integer()->defaultValue(0));

    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        echo "m180528_220402_addColumn_to_students cannot be reverted.\n";

        return false;
    }

    /*
    // Use up()/down() to run migration code without a transaction.
    public function up()
    {

    }

    public function down()
    {
        echo "m180528_220402_addColumn_to_students cannot be reverted.\n";

        return false;
    }
    */
}

<?php

use yii\db\Migration;

/**
 * Handles the creation of table `articles`.
 */
class m180522_135106_create_articles_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('articles', [
            'id' => $this->primaryKey(),
            'name' => $this->string(),
            'description' => $this->text(),
            'image' => $this->string(),
            'dateCreate' => $this->date(),
            'categoryID' => $this->integer(),
        ]);
        $this->createIndex(
            'idx-article-catID',
            'articles',
            'categoryID'
        );

        $this->addForeignKey(
            'fk-article-catID',
            'articles',
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
        $this->dropTable('articles');
    }
}

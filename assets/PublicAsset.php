<?php
/**
 * @link http://www.yiiframework.com/
 * @copyright Copyright (c) 2008 Yii Software LLC
 * @license http://www.yiiframework.com/license/
 */

namespace app\assets;

use yii\web\AssetBundle;

/**
 * Main application asset bundle.
 *
 * @author Qiang Xue <qiang.xue@gmail.com>
 * @since 2.0
 */
class PublicAsset extends AssetBundle
{
    public $basePath = '@webroot';
    public $baseUrl = '@web';
    public $css = [
        "public/css/bootstrap.min.css",
        "public/css/small-business.css",
        "http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css",
        'http://fonts.googleapis.com/css?family=Great+Vibes',
        'http://fonts.googleapis.com/css?family=Roboto:400,300,100,500,700,900',

    ];
    public $js = [
//        "public/js/jquery-1.11.3.min.js",
        "https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js",
        "https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js",
 //       "public/js/jquery.js",
       "public/js/bootstrap.min.js",
   //    "public/js/small-business.min.js",
   //     "public/js/SmoothScroll.js",
    ];
    public $depends = [

    ];
}

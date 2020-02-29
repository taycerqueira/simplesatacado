<?php

/* @var $this \yii\web\View */
/* @var $content string */

use app\widgets\Alert;
use yii\helpers\Html;
use yii\bootstrap\Nav;
use yii\bootstrap\NavBar;
use yii\widgets\Breadcrumbs;
use app\assets\AppAsset;
use kartik\sidenav\SideNav;


AppAsset::register($this);

$this->registerCss("
    .atacado-sidebar{
        margin-top: 50px;
        width: 205px;
        border-radius: unset;
        position: fixed;
        height: 100%;
    }
    .atacado-sidebar .panel{
        height: 100%;
    }
    .navbar-header{
        margin-left: -180px !important;
    }
    .container{
        margin-left: 205px;
    }
    .site-login{
        max-width: 400px;
        background: #fff;
        box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        border-radius: 10px 10px 10px 10px;
        padding: 50px;
    }

");
    
?>
<?php $this->beginPage() ?>
<!DOCTYPE html>
<html lang="<?= Yii::$app->language ?>">
<head>
    <meta charset="<?= Yii::$app->charset ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <?php $this->registerCsrfMetaTags() ?>
    <title><?= Html::encode($this->title) ?></title>
    <?php $this->head() ?>
</head>
<body class="text-center">
<?php $this->beginBody() ?>

<div class="wrap">
    <div class="container">
        <?= Alert::widget() ?>
        <?= $content ?>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <p class="pull-left">&copy; Tayane Cerqueira <?= date('Y') ?></p>
    </div>
</footer>

<?php $this->endBody() ?>
</body>
</html>
<?php $this->endPage() ?>

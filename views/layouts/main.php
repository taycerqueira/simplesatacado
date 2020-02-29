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
        margin-left: 205px !important;
    }
    .container {
        width: 85%;;
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
<body>
<?php $this->beginBody() ?>

<div class="wrap">
    <?php
    NavBar::begin([
        'brandLabel' => Yii::$app->name,
        'brandUrl' => Yii::$app->homeUrl,
        'options' => [
            'class' => 'navbar-inverse navbar-fixed-top',
        ],
    ]);
    echo Nav::widget([
        'options' => ['class' => 'navbar-nav navbar-right'],
        'items' => [
            ['label' => 'Página inicial', 'url' => ['/site/index']],
            Yii::$app->user->isGuest ? (
                ['label' => 'Entrar', 'url' => ['/site/login']]
            ) : (
                '<li>'
                . Html::beginForm(['/site/logout'], 'post')
                . Html::submitButton(
                    'Sair (' . Yii::$app->user->identity->login . ')',
                    ['class' => 'btn btn-link logout']
                )
                . Html::endForm()
                . '</li>'
            )
        ],
    ]);
    NavBar::end();
    echo '<div class="atacado-sidebar">';
    echo SideNav::widget([
        'type' => SideNav::TYPE_DEFAULT,
        'items' => [
            [
                'label' => 'Cliente',
                'icon' => 'user',
                'items' => [
                    ['label' => 'Novo', 'icon'=>'plus-sign', 'url'=>'#'],
                    ['label' => 'Gerenciar', 'icon'=>'th-list', 'url'=>'#'],
                ],
            ],
            [
                'label' => 'Produto',
                'icon' => 'barcode',
                'items' => [
                    ['label' => 'Novo', 'icon'=>'plus-sign', 'url'=>'#'],
                    ['label' => 'Gerenciar', 'icon'=>'th-list', 'url'=>'#'],
                ],
            ],
            [
                'url' => '#',
                'label' => 'Estoque',
                'icon' => 'stats',
            ],
            [
                'label' => 'Pedido',
                'icon' => 'shopping-cart',
                'items' => [
                    ['label' => 'Novo', 'icon'=>'plus-sign', 'url'=>'#'],
                    ['label' => 'Gerenciar', 'icon'=>'th-list', 'url'=>'#'],
                ],
            ],
            [
                'label' => 'Usuário',
                'icon' => 'cog',
                'url'=>['/usuario/index']
            ],
            [
                'url' => '#',
                'label' => 'Log',
                'icon' => 'list-alt',
            ],
        ],
    ]);
    echo '</div>';
    ?>

    <div class="container">
        <?= Breadcrumbs::widget([
            'links' => isset($this->params['breadcrumbs']) ? $this->params['breadcrumbs'] : [],
        ]) ?>
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

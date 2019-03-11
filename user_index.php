<?php
session_start();
include('functions.php');
chk_ssid();
$_name = $_SESSION['name'];
$menu = menu();
$menuLogin = menuLogin();
if($_SESSION['kanri_flg']==1){
    $menuSwitch = $menu.$menuLogin.'<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
}else{
    $menuSwitch = $menu.'<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
};
?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>ユーザー管理</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light bg_yellow">
            <a class="navbar-brand" href="#">管理者ページ</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <?=$menuSwitch?>
                </ul>
            </div>

            <p class="lginStatus"><span><?=$_name?></span>さんがログイン中</p>            
        </nav>
    </header>

    <form action="user_insert.php" method="post">
        <div class="form-group">
            <label for="name">ユーザー名</label>
            <input type="text" class="form-control" id="name" name="name">
        </div>
        <div class="form-group">
            <label for="lid">ログインID</label>
            <input type="text" class="form-control" id="lid" name="lid">
        </div>
        <div class="form-group">
            <label for="lpw">パスワード</label>
            <input type="password" class="form-control" id="lpw" name="lpw">
        </div>
        <div class="form-group">
            <input type="radio" id="kanri_flg0" name="kanri_flg" value="0" checked="checked">
                <label for="kanri_flg0">一般ユーザーとして登録</label>
            <input type="radio" id="kanri_flg1" name="kanri_flg" value="1">
                <label for="kanri_flg1">管理者として登録</label>
        </div>
        <div class="form-group nonDisp">
            <input type="radio" id="life_flg0" name="life_flg" value="0" checked="checked">
            <input type="radio" id="life_flg1" name="life_flg" value="1">
        </div>

        <div class="form-group">
            <button type="submit" class="btn btn-primary" name="register">登録する</button>
        </div>
    </form>

</body>

</html>
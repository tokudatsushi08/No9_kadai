<?php

function db_conn()
{
    $dbn = 'mysql:dbname=gs_f02_db23;charset=utf8;port=3306;host=localhost';
    $user = 'root';
    $ped = 'root';

    try{
        return new PDO($dbn,$user,$pwd);
    }catch(PDOexception $e){
        exit('dbError:'.$e->getMessage());
    }
}

function errorMsg($stmt)
{
    $error = $stmt->errorInfo();
    exit('ErrorQuery:'.$error[2]);
}

function h($str)
{
    return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
}

function chk_ssid()
{
    if(!isset($_SESSION['chk_ssid'])||$_SESSION['chk_ssid'] !=session_id()){
        header('Location: select_nologin.php');
    }else{
        session_regenerate_id(true);
        $_SESSION['chk_ssid']= session_id();
    }
}

function menu()
{
    $menu = '<li class="nav-item"><a class="nav-link" href="index.php">本の登録</a></li><li class="navbar-nav"><a class="nav-link" href="select.php">データ一覧</a></li>';
    return $menu;
}

function menuNon()
{
    $menuNon = '<li class="nav-item"><a class="nav-link" href="login.php">ログインページ</a></li>';
    $menuNon .= '<li class="nav-item"><a class="nav-link" href="select_nologin.php">データ一覧</a></li>';
    return $menuNon;
}

function menuLogin(){
    $menuLogin = '<li class="nav-item"><a class="nav-link" href="user_index.php">ユーザー登録</a></li>';
    $menuLogin .= '<li class="nav-item"><a class="nav-link" href="user_select.php">ユーザー管理</a></li>';
    return $menuLogin;
}
?>
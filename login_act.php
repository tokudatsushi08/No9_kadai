<?php
session_start();

include('functions.php');

$pdo = db_conn();
$lid = $_POST['lid'];
$lpw = $_POST['lpw'];

$sql = 'SELECT * FROM user_table WHERE lid = :lid AND lpw=:lpw';
$stmt = $pdo->prepare($sql);
$stmt -> bindValue(':lid',$lid, PDO::PARAM_STR);
$stmt -> bindValue(':lpw',$lpw,PDO::PARAM_STR);
$res = $stmt->execute();

if($res==false){
    queryError($stmt);
}

$val = $stmt->fetch();

if($val['id'] != ''){
    $_SESSION = array();
    $_SESSION['chk_ssid']  = session_id();
    $_SESSION['kanri_flg'] = $val['kanri_flg'];
    $_SESSION['name'] = $val['name'];
    header('Location: select.php');
} else {
    header('Location: login.php');
}

exit();

?>
<?php
require('dbconnect.php');
if (!empty($_POST['username']) and !empty($_POST['userpassword'])) {
    $name = $_POST['username'];
    $password = $_POST['userpassword'];
    $query = "SELECT \"Username\" FROM \"ForestSiteBD\".\"Users\" WHERE \"Username\"='$name' AND \"Password\"='$password'";
    $result = pg_query(pg_connect("host=localhost dbname=ForestCampingEnthusiasts user=postgres password=goaway"), $query);
    $user = pg_fetch_array($result);

    if (!empty($user)) {
        $_SESSION['login'] = true;
        $_SESSION['Username'] = $user[0];
        $userr=$_SESSION['Username'];
        header("Location: index.php");
        die();
    } else {
        $_SESSION['login'] = false;
        header("Location: index.php");
        die();
    }
}
else
{
    header("Location: index.php");
    die();
}

header("Location: index.php?page=login");
die();
?>
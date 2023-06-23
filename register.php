<?php
require('dbconnect.php');
    $dir='UsersAvatars/';
    $a=("SELECT MAX (\"ForestSiteBD\".\"Users\".\"User_ID\")+1 FROM \"ForestSiteBD\".\"Users\"");
    $uid= pg_query(pg_connect("host=localhost dbname=ForestCampingEnthusiasts user=postgres password=goaway"), $a);
    $nuid=pg_fetch_result($uid,0,0);
    $newname = $_POST['login'];
    $newpassword = $_POST['password'];
    $gender = $_POST['gender'];
    $filename=$nuid.$newname;
    $filenamee=$dir.$filename;
    $filename=$filenamee.'.png';
    $default='img/default.png';
    if(file_exists($_FILES['avatar']['tmp_name']))
        move_uploaded_file($_FILES['avatar']['tmp_name'],$filename);
    else
        copy($default,$filename);
    if ((strcmp($gender, 'мужской'))==0)
    {
        $query = "INSERT INTO \"ForestSiteBD\".\"Users\" VALUES ((SELECT MAX (\"ForestSiteBD\".\"Users\".\"User_ID\")+1 FROM \"ForestSiteBD\".\"Users\"), '$newname', '$filename', 'Male', '$newpassword')";
    }
    else
    {
        $query = "INSERT INTO \"ForestSiteBD\".\"Users\" VALUES ((SELECT MAX (\"ForestSiteBD\".\"Users\".\"User_ID\")+1 FROM \"ForestSiteBD\".\"Users\"), '$newname', '$filename','Female', '$newpassword')";
    }
    pg_query(pg_connect("host=localhost dbname=ForestCampingEnthusiasts user=postgres password=goaway"), $query);
?>
    <html lang="en">
<head>
    <meta charset="UTF-8">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Comfortaa:wght@300&display=swap" rel="stylesheet">
    <title>Сайт любителей походов в лес</title>
    <link rel="stylesheet" href="css/styles.css">
    <script src="js/main.js" defer></script>
    <style>
        .thx
        {
            margin:0px;
            padding:0px;
            width:600px;
            height:500px;
            border:solid;
            border-color:green;
            text-align:center;
            background-color:lightgreen;
            position:absolute;
            top:50%; left:50%;
            margin: -250px 0 0 -300px;
            font-family: comfortaa;
            font-weight: 300;
        }
    </style>
</head>
<body>
<div class="thx">
    <p>Здравствуйте, <?php echo $_POST['login'];?></p>
    <p>Благодарим Вас за регистрацию на нашем сайте!</p>
    <p>Ваш пол: <?php echo $_POST['gender'];?></p>
    <p>Ваш пароль (запишите куда-нибудь, наш сайт на данный момент не имеет функции восстановления пароля): <?php echo $_POST['password'];?></p>
    <p>
        <?php
        if ($_POST['rules']!='') echo("Вы приняли правила сайта!");
        ?>
    </p>
    <?php
    echo("Ваш аватар: ");
    echo "<img src=".$filename." height='200px' width='200px'>";

    ?>
    </br>
    <button class="regbut" type="button" onclick="location.href='index.php'">Вернуться в начало</button>
</div>
</body>
</html>
<?php
die();
?>

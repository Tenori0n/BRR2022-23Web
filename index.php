<?php
require("dbconnect.php")
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
</head>
<body>
    <?php
    session_start();
    ?>
     <h1 class="mainfont">
        <p class="sitename">Сайт любителей<br/>походов в лес</p>
        <p class="mainpage">На главную</p>
        <p class="sections">Разделы</p>
        <p class="randompage">Случайная <br/>страница</p>
         <?php
         if (isset($_SESSION['Username']))
         {
             echo('<div id="welcoming" class="welcoming"><span>Здравствуйте, </span>');
             echo($_SESSION['Username']);
             echo('<form action="logout.php">');
             echo('<input type="submit" value="Выйти" class="reg2but"></input></form></div>');
         }
         else
         {
         echo('<div id="reg" class="reg" onclick="regvis(),loginnvis(),entering()">Регистрация/<br/>Вход</div>');
         }
         ?>
      </h1>
    <h4 id="h4">
        <div class="loginn" id="loginn">
            <form action="login.php" method="post">
                <p>Вход</p>
                <p>Имя пользователя</p>
                <input name="username" id="username" type="text" pattern="[A-Za-z]{6,}[0-9]{4,4}" required placeholder="Введите имя пользователя">
                <p>Пароль</p>
                <input name="userpassword" id="userpassword" type="password" pattern="[A-Za-z]{6,}[0-9]{1,}" required placeholder="Введите пароль"><br><br>
                <input type="submit" id="loginbut" class="regbut" onclick="hidereg()" value="Войти"></input>
                <input class="regbut" type="reset">
                <button type="button" class="regbut" onclick="loginhid(), registvis()">Регистрация</button>
                <div class="close1" onclick="hidereg()">
                    <img src="img/cross.png" height="30px" width="30px">
                </div>
            </form>
        </div>
        <div class="regist" id="regist">
            <form action="http://project/reg.php" method="POST" enctype="multipart/form-data">
                <p class="registname">Регистрация</p>
                <p>Имя пользователя</p>
                <input name="login" type="text" pattern="[A-Za-z]{6,}[0-9]{1,}" required placeholder="Минимум 6 латинских символов и 1 цифра">
                <p>Аватар</p>
                <input name="avatar" type="file">
                <p>Пол</p>
                <select name="gender"><option>мужской</option><option>женский</option></select>
                <p>Пароль</p>
                <input name="password" type="password" pattern="[A-Za-z]{6,}[0-9]{1,}" required placeholder="Минимум 6 латинских свимволов и 1 цифра">
                <p>Подтверждение пароля</p>
                <input name="passwordcheck" type="password" pattern="[A-Za-z]{6,}[0-9]{1,}" required placeholder="Повторите пароль"><br><br>
                <input name="rules" type="checkbox" required><span class="confirm">Я принимаю правила сайта</span><br><br>
                <input class="regbut" type="submit">
                <input class="regbut" type="reset">
                <div class="close2" onclick="hidereg()">
                    <img src="img/cross.png" height="30px" width="30px">
                </div>
            </form>
        </div>
    </h4>
    <h2 class="mainfont">
        <p class="welcometext">Здравствуй, посетитель!<br/>
            Данный сайт посвящен походам в лес. На этом сайте вы найдете разнообразные советы, которые помогут вам в походах в лес от создания инструментов для ориентирования на местности до постройки простых жилищ своими руками!<br/>
            Приятного ознакомления!</p>
    </h2>
    <h3 class="mainfont">
        <p class="contacts">Этот сайт был создан в 2022 году, как проект по дисциплине Основы WEB-програмирования. <br>
            Контактные данные: тел. 88005553535, эл. почта: iloveles@mail.ru
        </p>
    </h3>
</body>
</html>
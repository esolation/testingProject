<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<h1>Register</h1>
<div>${message}</div>
<div><form action="/registration" method="post">
        <input type="text" name="FIO" placeholder="Введите ФИО">
        <input type="text" name="username" required placeholder="Введите логин" />
        <input type="password" name="password" required placeholder="Введите пароль" />
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <input type="submit" value="Отправить">
    </form></div>
</body>
</html>
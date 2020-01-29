<html>

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="/static/css/css.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/reg_form.css" />
<!-- Иконки -->
  <link rel="apple-touch-icon" sizes="76x76" href="/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
<link rel="manifest" href="/site.webmanifest">
<link rel="mask-icon" href="/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <script src="https://vk.com/js/api/openapi.js?162" type="text/javascript"></script>
</head>

<body>
  <div class="main-img">
    <img url="books-with-graduation-cap-and-diploma.jpg" />
    <div class="fdp">
      <h1>Факультет довузовской подготовки</h1>
      </div>
    <div class="main-box">


      <form action="" class="registration">
  <div class="imgcontainer">
    <img src="https://fdp.grsu.by/images/Logo_GrGU.png" alt="Avatar" class="avatar">
  </div>

  <div class="container">
    <form action="login" method="post">
    <label for="username"><b>Логин</b></label>
    <input type="text" placeholder="Введите логин" name="username">
    <label for="psw"><b>Пароль</b></label>
    <input type="password" placeholder="Введите пароль" name="password">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
      <span class="psw"> <a href="#">Забыли пароль?</a></span>
    <button class="log-btn" type="submit">Вход</button>

    </form>
    <button class="log-btn" type="submit">Регистрация</button>
  </div>
    </div>
  </div>
  <script type="text/javascript" src="https://vk.com/js/api/openapi.js?162"></script>
  <script type="text/javascript">
    VK.init({apiId: API_ID});
  </script>

  <!-- VK Widget -->
  <div id="vk_auth"></div>
  <script type="text/javascript">
    VK.Widgets.Auth("vk_auth", {"onAuth":"function(data) {alert('user '+data['uid']+' authorized');}"});
  </script>
</body>

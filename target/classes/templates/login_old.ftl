<html xmlns="http://www.w3.org/1999/html">

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="/static/css/css.css" />
  <!-- Иконки -->
  <link rel="apple-touch-icon" sizes="152x152" href="data/favicons/apple-touch-icon.png">
  <link rel="icon" type="image/png" sizes="32x32" href="data/favicons/favicon-32x32.png">
  <link rel="icon" type="image/png" sizes="16x16" href="data/favicons/favicon-16x16.png">
  <link rel="manifest" href="data/favicons/site.webmanifest">
  <link rel="mask-icon" href="data/favicons/safari-pinned-tab.svg" color="#5bbad5">
  <meta name="msapplication-TileColor" content="#e3d9d9">
  <meta name="theme-color" content="#ffffff">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
</head>

<body>
  <div class="main-img">
    <img url="books-with-graduation-cap-and-diploma.jpg" />
    <div class="fdp">
      <h1>Факультет довузовской подготовки</h1>
      </div>
    <div class="main-box">
      <div class="main-txt">
        <h1>Присоединяйся</h1>
        <h1>Проходи тесты</h1>
        <h1>Развивайся</h1>
      </div>
      <div class="emty"></div>
      <div class="registration">
        <img src="https://fdp.grsu.by/images/Logo_GrGU.png">
        <h1>Здравствуйте</h1>
        <form action="/login" method="post">
        <input class="input-main-log" placeholder="Логин" autocomplete="on" required="required" name="username">
        <input class="input-main-pass" placeholder="Пароль" name="password" type="password">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <a href="#">
          <p class="forgot-pass">Forgot password?</p>
        </a>
        <div class="a-log">
          <div class="login-btn"> <input type="submit" value="Войти"></div>
        </div>
          </form>
        <a href="/registration">
          <div class="signup">Регистрация</div>
        </a>
      </div>

    </div>
  </div>
</body>

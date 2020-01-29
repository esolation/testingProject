<!DOCTYPE HTML>
<html>

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="css/css.css" />
  <link rel="stylesheet" type="text/css" href="css/my.css" />
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
  <header>
    <div class="main-header">
      <h1>
        <a href=""> Факультет довузовской подготовки </a>
      </h1>
      <div class="search">
        <p>Добрый день, ${user.getUsername()}</p>
        <p>
        <form action="/logout" method="post">
          <input type="hidden" name="_csrf" value = "${_csrf.token}">
          <input type="submit" value="Выйти">
        </form></p>
      </div>
    </div>

    <nav class="menubar">
      <ul role="menubar">
        <li role="menuitem"><a href="http://localhost:8080">Главная</a></li>
        <li role="menuitem"><a href="http://localhost:8080">Тесты</a></li>
        <li role="menuitem"><a href="">Опросы</a></li>
        <li role="menuitem"><a href="">Теория</a></li>
        <li role="menuitem"><a href="<#if user.getRoles()[0] == 'ADMIN'>/admin<#else>/my_info</#if>">Кабинет пользователя</a></li>

      </ul>
    </nav>
  </header>
  <main>
    <div class="title-box">
      <h1 id="categoria">Личный кабинет</h1>
      <hr><br>
    <div class="nav-box">
      <ul role="navigation">
        <li role="navigation"><a href="/my_info">Персональные данные</a></li>
        <li role="navigation"><a href="">Информация о курсе</a></li>
        <li role="navigation"><a href="/my_stat">Статистика</a></li>
      </ul>
    </div>
    <div class="info-box">
      <img class="info-img" src="" />
      <table class="info-table">
        <tbody>
          <tr>
            <td>ФИО</td>
            <td><b>${user.FIO}</b></td>
          </tr>
          <tr>
            <td>Номер телефона</td>
            <td><b>${user.phoneNumber}</b></td>
          </tr>
          <tr>
            <td>e-mail</td>
            <td><b><a href="mailto:${user.eMail}">${user.eMail}</a></b></td>
          </tr>
          <tr>
            <td>Курс</td>
            <td><b>${user.course}</b></td>
          </tr>
          <tr>
            <td>Номер группы</td>
            <td><b>${user.numberOfGroup}</b></td>
          </tr>
          <tr>
            <td>Период обучения</td>
            <td><b>12.05.2019-13.09.2019</b></td>
          </tr>
          <tr>
            <td>Серия</td>
            <td><b>${user.passport_ser}</b></td>
          </tr>
          <tr>
            <td>Номер</td>
            <td><b>${user.passport_num}</b></td>
          </tr>
          <tr>
            <td>Личный номер</td>
            <td><b>${user.personalNumber}</b></td>
          </tr>
          <tr>
            <td>Адрес</td>
            <td><b>${user.adress}</b></td>
          </tr>
          <tr>
            <td>Школа</td>
            <td><b>${user.numberOfSchool}</b></td>
          </tr>
          <tr>
            <td>Класс</td>
            <td><b>${user.getStudyClass()}</b></td>
          </tr>
          <tr>
            <td>Предметы</td>
            <td>
              <div class="categories rus">
                <a href="">Русский язык</a>
              </div>
              <div class="categories mat"><a href="">Математика</a></div>
              <div class="categories fiz"><a href="">Физика</a></div>
            </td>
          </tr>

        </tbody>

      </table>
    </div>




  </main>

</body>

</html>

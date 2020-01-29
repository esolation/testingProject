<html>

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="/static/css/css.css" />
<link rel="stylesheet" type="text/css" href="/static/css/test_add.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/my.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/user_add.css" />

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

      </div>
    </div>

    <nav class="menubar">
      <ul role="menubar">
        <li role="menuitem"><a href="http://localhost:8080">Главная</a></li>
        <li role="menuitem"><a href="http://localhost:8080">Тесты</a></li>
        <li role="menuitem"><a href="">Опросы</a></li>
        <li role="menuitem"><a href="">Теория</a></li>
        <li role="menuitem"><a href="">Кабинет пользователя</a></li>

      </ul>
    </nav>
  </header>
  <main>
    <div class="title-box">
      <h1 id="categoria">Добавление пользователя</h1>
      <hr><br>
      <div class="nav-box">
        <ul role="navigation">
          <li role="navigation"><a href="/admin/users">Управление пользователями</a></li>
          <li role="navigation"><a href="http://localhost:8080/admin">Управление тестами</a></li>
          <li role="navigation"><a href="">Управление теорией</a></li>
          <li role="navigation"><a href="">Анкеты</a></li>
          <li role="navigation"><a href="">Договоры</a></li>
          <li role="navigation"><a href="">Медиа менеджер</a></li>
        </ul>
      </div>
      <form action="${usr}" method="post">
          <div class="user-add-box">
            <h2>ФИО</h2>
            <input type="text " name="FIO" placeholder="ФИО" value="${usr.getFIO()}">
<#--            <h2>Роль</h2>-->
<#--            <select >-->
<#--              <option>Учитель</option>-->
<#--              <option>Пользователь</option>-->
<#--              <option>Бич</option>-->
<#--            </select>-->
            <h2>Номер телефона</h2>
            <input type="text" name="phoneNumber" placeholder="Номер телефона" value="<#if usr.getPhoneNumber()??>${usr.getPhoneNumber()}</#if>" >
            <h2>e-mail</h2>
            <input type="text" name="eMail" placeholder="Почта" value="<#if usr.geteMail()??>${usr.geteMail()}</#if>">
<#--            <h2>Курс</h2>-->
<#--            <select>-->
<#--              <option>123</option>-->
<#--              <option>фывцй</option>-->
<#--              <option>фывыф</option>-->
<#--            </select>-->
            <h2>Курс</h2>
            <input type="text" name="course" placeholder="Курс" value="<#if usr.getCourse()??>${usr.getCourse()}</#if>">
            <h2>Номер группы</h2>
            <input type="text" name="numberOfGroup" placeholder="Номер группы" value="<#if usr.numberOfGroup??>${usr.numberOfGroup}</#if>">
<#--            <h2>Период обучения c</h2>-->
<#--            <input type="date" name="dates"-->
<#--       value="2019-05-09" min="2019-01-01" max="2020-12-31">-->
<#--            <h2>По</h2>-->
<#--            <input type="date" name="dates"-->
<#--       value="2019-05-09" min="2019-01-01" max="2020-12-31">-->
            <h2>Серия</h2>
            <input type="text" name="passport_ser" placeholder="Серия пасспорта" value="<#if usr.getPassport_ser()??>${usr.getPassport_ser()}</#if>">
            <h2>Номер</h2>
            <input type="text" name="passport_num"  placeholder="Номер пасспорта" value="<#if usr.getPassport_num()??>${usr.getPassport_num()}</#if>">
            <h2>Личный номер</h2>
            <input type="text" name="personalNumber" placeholder="Личный номер" value="<#if usr.getPersonalNumber()??>${usr.getPersonalNumber()}</#if>">
            <h2>Адрес</h2>
            <input type="text" name="adress" placeholder="Адрес" value="<#if usr.getAdress()??>${usr.getAdress()}</#if>">
            <h2>Школа</h2>
            <input type="text" name="numberOfSchool" placeholder="Номер школы" value="<#if usr.numberOfSchool??>${usr.numberOfSchool}</#if>">
            <h2>Класс</h2>
            <input type="text" name="studyClass" placeholder="Класс" value="<#if usr.getStudyClass()??>${usr.getStudyClass()}</#if>">




          <input type="submit" value="Сохранить">

            <input type="hidden" value="${_csrf.token}" name="_csrf">
      </div>
      </form>

    </body>
</html>

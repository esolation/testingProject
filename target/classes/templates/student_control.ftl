<!DOCTYPE HTML>
<html>

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="/static/css/css.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/my.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/admin.css" />
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
          <li role="navigation"><a href="/admin/users">Управление пользователями</a></li>
          <li role="navigation"><a href="http://localhost:8080/admin">Управление тестами</a></li>
          <li role="navigation"><a href="">Управление теорией</a></li>
          <li role="navigation"><a href="">Анкеты</a></li>
          <li role="navigation"><a href="">Договоры</a></li>
          <li role="navigation"><a href="">Медиа менеджер</a></li>
        </ul>
      </div>
      <div class="test-stat-box">
        <div class="categories-box">


        </div>
       <#list users as usr>
        <div class="test-name-admin">

          <p>

            <a  href="/admin/users/${usr.getUsername()}">
              ${usr.FIO}
            </a>

          </p>

          <div class="test-admin-edit">
            <a href="/admin/users/view_user/${usr.getId()}"> <button class="test-admin-veiw" type="submit" name="view"><i class="fa fa-eye"></i></button></a>
<#--            <button class="test-admin-edit" type="submit" name="edit"><i class="fa fa-edit"></i></button>-->
<#--            <button class="test-admin-del" type="submit" name="del"><i class="fa fa-trash"></i></button>-->

          </div>
        </div>
        </#list>

      </div>
    <a href="/admin/users/saveusers/save">Вывести на печать</a>

    </div>





  </main>

</body>

</html>

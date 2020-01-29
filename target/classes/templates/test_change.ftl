<html>

<head>
  <title>CRM</title>
  <meta charset="utf-8" />
  <link rel="stylesheet" type="text/css" href="/static/css/css.css" />
<link rel="stylesheet" type="text/css" href="/static/css/test_add.css" />
  <link rel="stylesheet" type="text/css" href="/static/css/my.css" />

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
    <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
    <script src="/static/js/addSubject.js" type="text/javascript"></script>
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
      <h1 id="categoria">Редактирование ${qCh.getQuestion()}</h1>
      <hr><br>
      <div class="nav-box">
        <ul role="navigation">
          <li role="navigation"><a href="">Управление пользователями</a></li>
          <li role="navigation"><a href="">Управление тестами</a></li>
          <li role="navigation"><a href="">Управление теорией</a></li>
          <li role="navigation"><a href="">Анкеты</a></li>
          <li role="navigation"><a href="">Договоры</a></li>
          <li role="navigation"><a href="">Медиа менеджер</a></li>
        </ul>
      </div>
      <div class="test-stat-box">
        <div class="test-name-admin">
          <div class="test-name-admin">


            <div class="test-admin-edit">
              <button class="test-admin-edit" type="submit" name="edit"><i class="fa fa-edit"></i></button>
              <button class="test-admin-del" type="submit" name="del"><i class="fa fa-trash"></i></button>

            </div>
          </div>
          <form action="http://localhost:8080/createquestion" method="post">
          <div class="test-name-add">
            <h2>Название</h2>
            <input type="text" readonly name="topic" placeholder="Название теста" value="${qCh.topic.getTopicName()}">
            <h2>Предмет</h2>

            <input type="text" name="subject" readonly value="${qCh.topic.getSubject().getSubjectname()}">
          </div>
        </div>
        <h2>Вопрос</h2>
        <textarea name="question">${qCh.getQuestion()}</textarea>
        <h2>Ответы (я не понял как там с верными/неверными вопросами добавлление идёт)</h2>
        <#assign x=0>
        <#list qCh.getAllAnswers() as answer>
          <#if x < 3>
        <input type="" name="false${x}" placeholder="Ответ" value="${answer}">
            <#else>
              <input type="" name="current" placeholder="Ответ" value="${answer}">
          </#if>

          <#assign x++>
<#--        <input type="" name="false1" placeholder="Ответ" >-->
<#--        <input type="" name="false2" placeholder="Ответ" >-->
        </#list>

        <input type="hidden" name="_csrf" value="${_csrf.token}">
        <h2>Подсказка</h2>
        <textarea></textarea>
        <input type="submit" value="Сохранить тест">
      </form>
    <br>
 /*  Ну вот я это так представляю. Скажи как ты можешь сделать и проправим чуть что. * /
      </div>
    </body>
</html>

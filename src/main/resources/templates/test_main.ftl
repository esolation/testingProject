<!DOCTYPE HTML>
<html>

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

      <div class="title-box">
        <h1 id="categoria">Тесты</h1>
        <hr><br>
        <div class="categories-box">
          <div class="categories rus"><a href="">Русский язык</a></div>
          <div class="categories mat"><a href="">Математика</a></div>
          <div class="categories fiz"><a href="">Физика</a></div>
          <div class="categories bio"><a href="">Биология</a></div>
          <div class="categories him"><a href="">Химия</a></div>
        </div>
          <#list subjects as subject>
          <div class="test-name-box">
            <div class="test-name">
                <h1>
                  <a href="/subject/${subject.getId()}">
                    ${subject.getSubjectname()}


                  </a>
                </h1>

              </div>

          </div>
          </#list>
        </div>
      </div>


</body>
    </html>

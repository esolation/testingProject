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

        </div>
      </div>

	    <nav class="menubar">
	      <ul role="menubar">
		      <li role="menuitem"><a href="">Главная</a></li>
		      <li role="menuitem"><a href="">Тесты</a></li>
		      <li role="menuitem"><a href="">Опросы</a></li>
		      <li role="menuitem"><a href="">Теория</a></li>
		      <li role="menuitem"><a href="">Кабинет пользователя</a></li>
        </ul>
	    </nav>
    </header>
    <main>
      <div class="title-box">
        <h1 id="categoria">Тест 1. Русский язык</h1>
        <hr><br>
      </div>
 <progress value="20" max="100"></progress><br>
      <div class="test-box">
          <form action="/checktest" method="post">
          <#list answers as question>
        <div class="questions">
          <div class="question-box">
          <div class="question">${question.getQuestion()}</div>
      </div>
          </div>


 <fieldset>
     <#list question.getAllAnswers() as answer>
     <div class="container">
       <div>
         <div class="line">
             <input id="checkbox-html" type="checkbox" value="${answer}" name="answer">
             <div></div>
             <div></div>
             <div></div>
         </div>
          <label for="checkbox-html">${answer}</label>
        </div>
       </#list>



     </div>
 </fieldset>

        </div>

          </#list>
              <input type="hidden" name="_csrf" value="${_csrf.token}">
              <input type="hidden" name = "topic" value="${answers[0].getTopic().getTopicName()}">

              <input type="submit" value="Проверить тест">
          </form>
      </div>

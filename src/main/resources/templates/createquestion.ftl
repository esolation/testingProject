<!doctype html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="_csrf" content="${_csrf.token}">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>

    <title>Document</title>
</head>
<body>
<div>
    <form action="createquestion" method="post">
        <select name="subject">
            <option value="Русский язык">Русский язык</option>
            <option value="Математика">Математика</option>
        </select>
        <input type="text" name="topic" placeholder="Тема теста">
        <input type="text" name="question" placeholder="Введите вопрос">
        <input type="text" name ="false0" placeholder="Введите неверный ответ">
        <input type="text" name ="false1" placeholder="Введите неверный ответ">
        <input type="text" name ="false2" placeholder="Введите неверный ответ">
        <input type="text" name="current" placeholder="Введите верный ответ">
        <input type="hidden" name="_csrf" value="${_csrf.token}">
<#--        <input type="button" value="Отправить" onclick="doAjax()">-->
    </form>
    <input type="button" value="Отправить" onclick="doAjax()">
    <script type="text/javascript">
        function doAjax() {
            var csrftoken = $('meta[name=_csrf]').attr('content');
            alert("Success");
            $.ajaxSetup({
                beforeSend: function (xhr, settings) {
                    if (!/^(GET|HEAD|OPTIONS|TRACE)$/i.test(settings.type)) {
                        xhr.setRequestHeader("X-CSRFToken", csrftoken)
                    }
                }
            });
            $.ajax({
                type: "POST",
                url: "createquestion",
                data: {subject : $("#subject").val(), topic: $("#topic").val(), question: $("#question").val(), false0: $("#false0").val(),false1: $("#false1").val(), false2: $("#false2").val(), current: $("#current").val()
            }, success: alert("SUCCES");
            
        }
        }
    </script>
</div>
</body>
</html>
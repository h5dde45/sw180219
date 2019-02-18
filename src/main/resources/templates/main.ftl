<!DOCTYPE HTML>
<html>
<head>
    <title>SW</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>
<body style="background: darkgray">
<form action="/logout" method="post">
    <input type="hidden" name="_csrf" value="${_csrf.token}"/>
    <input type="submit" value="Sign Out"/>
</form>
<div>
    <form method="post">
        <input type="text" name="text" placeholder="Enter message"/>
        <input type="text" name="tag" placeholder="Enter tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Add</button>
    </form>
</div>
<div>
    <form method="post" action="filter">
        <input type="text" name="filter" placeholder="Enter filter for tag"/>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <button type="submit">Find</button>
    </form>
</div>
<div>Список сообщений</div>
<#list messages as name>
    <div>
        <b>${name.id}</b>
        <span>${name.text}</span>
        <i>${name.tag}</i>
    </div>
</#list>
</body>
</html>
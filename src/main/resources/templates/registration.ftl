<#import "parts/common.ftl" as c>

<@c.page>
    <h3>Add new user</h3>
    <i>${message!}</i>
    <form action="/registration" method="post">
        <div><label> User Name : <input type="text" name="username"/> </label></div>
        <div><label> Password: <input type="password" name="password"/> </label></div>
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <div><input type="submit" value="Sign In"/></div>
    </form>
</@c.page>

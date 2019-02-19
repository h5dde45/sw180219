<#import "parts/common.ftl" as c>

<@c.page>
    <form action="/logout" method="post">
        <input type="hidden" name="_csrf" value="${_csrf.token}"/>
        <input type="submit" value="Sign Out"/>
    </form>
    <div><a href="/user">Users list</a></div>
    <div>
        <form method="post" enctype="multipart/form-data">
            <input type="text" name="text" placeholder="Enter message.."/>
            <input type="text" name="tag" placeholder="Enter tag.."/>
            <input type="file" name="file">
            <input type="hidden" name="_csrf" value="${_csrf.token}"/>
            <button type="submit">Add</button>
        </form>
    </div>
    <div>
        <form method="get" >
            <input type="text" name="filter"
                   placeholder="Enter filter for tag.." value="${filter!}"/>
            <button type="submit">Find</button>
        </form>
    </div>
    <div>Список сообщений</div>
    <#list messages as message>
        <div>
            <b>${message.id}</b>
            <span>${message.text}</span>
            <i>${message.tag}</i>
            <strong>${message.authorName}</strong>
            <div>
                <#if message.filename??>
                    <img src="/img/${message.filename}" >
                </#if>
            </div>
        </div>
    <#else >
        No messages
    </#list>
</@c.page>

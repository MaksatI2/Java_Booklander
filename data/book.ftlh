<html>
<head><title>${book.title}</title></head>
<body>
<h1>${book.title}</h1>
<p>Автор: ${book.author}</p>
<p>Статус: ${book.issued?string("Выдана", "Свободна")}</p>

<#if book.issued>
    <p>Кому выдана: ${borrowerName}</p>
<#else>
    <p>Книга свободна</p>
</#if>
</body>
</html>


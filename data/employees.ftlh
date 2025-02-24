<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список сотрудников</title>
    <style>
        table { width: 100%; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid black; text-align: left; }
        th { background: #f4f4f4; }
        a { text-decoration: none; color: blue; }
        ss {padding: 5px;}
    </style>
</head>
<body>
    <h1>Список сотрудников</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Имя</th>
            <th>Взятые книги</th>
        </tr>
        <#list employees as employee>
            <tr>
                <td>${employee.id}</td>
                <td><a href="/book/1">${employee.name}</a></td>
                <td>
                    <#assign books = borrowedBooksMap[employee.id]![]>
                    <#if books?size == 0>
                        Нет взятых книг
                    <#else>
                        <ul>
                            <#list books as bookTitle>
                                <li>${bookTitle}</li>
                            </#list>
                        </ul>
                    </#if>
                </td>
            </tr>
        </#list>
    </table>

</body>
</html>

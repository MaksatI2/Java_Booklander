<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список книг</title>
    <style>
        table { width: 70%; border-collapse: collapse; }
        th, td { padding: 10px; border: 1px solid black; text-align: left; }
        th { background: #f4f4f4; }
        a { text-decoration: none; color: blue; }
    </style>
</head>
<body>
    <h1>Список книг</h1>
    <table>
        <tr>
            <th>IMG</th>
            <th>ID</th>
            <th>Название</th>
            <th>Статус</th>
            <th>Детали</th>
        </tr>
        <#list books as book>
            <tr>
                <td><img src="${book.image}" alt="Обложка ${book.title}" width="140" height="140">
                <td>${book.id}</td>
                <td>${book.title}</td>
                <td>${(book.issued)?string("Выдана", "Доступна")}</td>
                <td><a href="/book/1">Подробнее</a></td>
            </tr>
        </#list>
    </table>
</body>
</html>

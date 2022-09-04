<%@ page import="model.Author" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Authors</title>
</head>
<body>
<h1 style="color: cadetblue">AUTHORS</h1>
<%List<Author> authors = (List<Author>) request.getAttribute("authors");%>
<table border="1">
    <tr>
        <th>ID</th>
        <th>NAME</th>
        <th>SURNAME</th>
        <th>EMAIL</th>
        <th>AGE</th>
        <th style="color: cadetblue">ACTION</th>
    </tr>
    <% for (Author author : authors) {%>
    <tr>
        <td><%=author.getId()%>
        </td>
        <td><%=author.getName()%>
        </td>
        <td><%=author.getSurname()%>
        </td>
        <td><%=author.getEmail()%>
        </td>
        <td><%=author.getAge()%>
        </td>
        <td><a href="/authors/remove?id=<%=author.getId()%>" style="color: cadetblue">REMOVE</a>
            <a href="/authors/edit?id=<%=author.getId()%>" style="color: cadetblue">EDIT</a>
        </td>
    </tr>
    <% }%>
</table>
</body>
</html>

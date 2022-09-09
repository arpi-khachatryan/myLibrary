<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>
<h1 style="color:  cadetblue">USERS</h1>
<% List<User> users = (List<User>) request.getAttribute("users");%>
<table border="1">
    <tr>
        <th>image</th>
        <th>id</th>
        <th>name</th>
        <th>surname</th>
        <th>email</th>
        <th>action</th>
    </tr>
    <% for (User user : users) { %>
    <tr>
        <td><%=user.getId()%>
        </td>
        <td><%=user.getName()%>
        </td>
        <td><%=user.getSurname()%>
        </td>
        <td><%=user.getEmail()%>
        </td>
        <td>
            <a href="/users/remove?id=<%=user.getId()%>">Remove</a> |
            <a href="/users/edit?id=<%=user.getId()%>">Edit</a>
        </td>
    </tr>
    <% } %>
</table>
</body>
</html>

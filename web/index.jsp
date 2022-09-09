<%@ page import="model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Library</title>
</head>
<%
    User user = (User) session.getAttribute("user");
%>
<body>

<div>
    <div>
        <div>
            <img src="/image/custom-library.jpg" width="800" height="350">
        </div>
    </div>
    <div>
        <h1 style="color: cadetblue">Hello From My Library</h1>
        <a href="/authors" style="color: steelblue">Show all authors</a>
        <a href="/books" style="color: steelblue">Show all books</a>
        <a href="/authors/add" style="color: steelblue">Add author</a>
        <%
            if (user != null) {
        %>
        <a href="/books/add" style="color: steelblue">Add book</a>
        <a href="/logout" style="color: dodgerblue">Logout</a>
        <% } else {%>
        <a href="/users/add" style="color: steelblue">Register</a><br>
        <a href="/login" style="color: steelblue">Login</a><br>
        <%}%>
    </div>
</div>

</body>
</html>

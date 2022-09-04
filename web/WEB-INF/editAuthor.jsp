<%@ page import="model.Author" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Author</title>
</head>
<body>
<h1 style="color: cadetblue">EDIT AUTHOR</h1>
<% Author author = (Author) request.getAttribute("author");%>
<h3 style="color: cadetblue">Update the data:</h3><br>
<form action="/authors/edit" method="post">
    <input type="hidden" name="id" , value="<%=author.getId()%>"><br>
    <input type="text" name="name" value="<%=author.getName()%>"><br>
    <input type="text" name="surname" value="<%=author.getSurname()%>"><br>
    <input type="email" name="email" value="<%=author.getEmail()%>"><br>
    <input type="text" name="age" value="<%=author.getAge()%>"><br>
    <input type="submit" value="UPDATE">
</form>
</body>
</html>

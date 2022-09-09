<%@ page import="model.Book" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Author" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<h1 style="color: cadetblue">ADD BOOK</h1>
<%
    List<Author> authors = (List<Author>) request.getAttribute("authors");
%>
<h3 style="color: cadetblue">Please input data about the book:</h3>
<form action="/books/add" method="post" enctype="multipart/form-data">
    <input type="text" name="title" placeholder="Please input book's title"><br>
    <h3 style="color: cadetblue">Please select book description:</h3>
    <select name="description"><br>
        <option value="DRAMA"><span style="color: cadetblue">DRAMA</span></option>
        <option value="FICTION"><span style="color: cadetblue">FICTION</span></option>
        <option value="NONFICTION"><span style="color: cadetblue">NONFICTION</span></option>
        <option value="POETRY"><span style="color: cadetblue">POETRY</span></option>
    </select><br>
    <input type="text" name="price" placeholder="Please input book's price"><br>
    <h3 style="color: cadetblue">Please select the author:</h3>
    <select name="author_id">
        <% for (Author author : authors) { %>
        <option value="<%=author.getId()%>">
            <%=author.getName()%> <%=author.getSurname()%>
        </option>
        <%}%>
    </select><br>
    <h3 style="color: cadetblue">Profile Picture:</h3>
    <input type="file" name="profilePic"/><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>

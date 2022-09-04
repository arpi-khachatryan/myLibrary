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
<form action="/books/add" method="post">
    <input type="text" name="title" placeholder="Please input book's title"><br>
    Please select book description:<br>
    <select name="description"><br>
        <option value="DRAMA"><span style="color: cadetblue">DRAMA</span></option>
        <option value="FICTION"><span style="color: cadetblue">FICTION</span></option>
        <option value="NONFICTION"><span style="color: cadetblue">NONFICTION</span></option>
        <option value="POETRY"><span style="color: cadetblue">POETRY</span></option>
    </select><br>
    <input type="text" name="price" placeholder="Please input book's price"><br>
    Please select the author:<br>
    <select name="author_id">
        <% for (Author author : authors) { %>
        <option value="<%=author.getId()%>">
            <%=author.getName()%> <%=author.getSurname()%>
        </option>
        <%}%>
    </select><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>

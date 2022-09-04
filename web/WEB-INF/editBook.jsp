<%@ page import="model.Author" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit Book</title>
</head>
<body>
<h1 style="color: cadetblue">EDIT BOOK</h1>
<%
    List<Author> authorList = (List<Author>) request.getAttribute("authors");
    Book book = (Book) request.getAttribute("books");
%>
<h3 style="color: cadetblue">Update the data:</h3>
<form action="/books/edit" method="post">
    <input type="hidden" name="id" value="<%=book.getId()%>"><br>
    <input type="text" name="title" value="<%=book.getTitle()%>"><br>
    <select name="description"><br>
        <option value="DRAMA"><span style="color: cadetblue">DRAMA</span></option>
        <option value="FICTION"><span style="color: cadetblue">FICTION</span></option>
        <option value="NONFICTION"><span style="color: cadetblue">NONFICTION</span></option>
        <option value="POETRY"><span style="color: cadetblue">POETRY</span></option>
    </select><br>
    <input type="text" name="price" value="<%=book.getPrice()%>"><br>
    <select name="author_id">
        <% for (Author author : authorList) {
            if (author.equals(book.getAuthor())) {
        %>
        <option selected value="<%=author.getId()%>"><%=author.getName()%><%=author.getSurname()%>
        </option>
        <%
                }
            }
        %>
    </select><br>
    <input type="submit" value="UPDATE">
</form>
</body>
</html>

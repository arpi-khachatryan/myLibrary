<%@ page import="java.util.List" %>
<%@ page import="model.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>All Books</title>
</head>
<body>
<h1 style="color: cadetblue">BOOKS</h1>
<%
    List<Book> books = (List<Book>) request.getAttribute("books");
%>
<table border="1">
    <tr>
        <th>IMAGE</th>
        <th>ID</th>
        <th>TITLE</th>
        <th>DESCRIPTION</th>
        <th>PRICE</th>
        <th>AUTHOR'S NAME</th>
        <th style="color: cadetblue">ACTION</th>
    </tr>
    <% for (Book book : books) { %>
    <tr>
        <td>
            <%if (book.getProfilePic() == null || book.getProfilePic().length() ==0) {%>
            <img src="/image/Unknown1.png" width="100">
            <%} else {%>
            <img src="/getImage?profilePic=<%=book.getProfilePic()%>" width="100">
            <%}%>
        </td>
        <td><%=book.getId()%>
        </td>
        <td><%=book.getTitle()%>
        </td>
        <td><%=book.getDescription().name()%>
        </td>
        <td><%=book.getPrice()%>
        </td>
        <td><%if (book.getAuthor() != null) { %>
            <%=book.getAuthor().getName()%> <%=book.getAuthor().getSurname()%>
            <% } else { %>
            <span style="color: red">There is no author</span>
            <%}%>
        </td>
        <td>
            <a href="/books/remove?id=<%=book.getId()%>" style="color: cadetblue">REMOVE</a>
            <a href="/books/edit?id=<%=book.getId()%>" style="color: cadetblue">EDIT</a>
        </td>
    </tr>
    <%}%>
</table>
</body>
</html>

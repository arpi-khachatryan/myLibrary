<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Author</title>
</head>
<body>
<h1 style="color: cadetblue">ADD AUTHOR</h1>
<h3 style="color: cadetblue">Please input data about the author:</h3>
<form action="/authors/add" method="post">
    <input type="text" name="name" placeholder="Please input author's name"><br>
    <input type="text" name="surname" placeholder="Please input author's surname"><br>
    <input type="email" name="email" placeholder="Please input author's email"><br>
    <input type="text" name="age" placeholder="Please input author's age"><br>
    <input type="submit" value="REGISTER">
</form>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 30/9/2020
  Time: 10:46 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Product</h1>
<p>
    <a href="/product?action=create">Create new Product</a>
</p>
<form method="get" action="/product">
    <input type="text" name="search">
    <input type="submit" value="search" name="action">
</form>
<table border="1">
    <tr>
        <td>id</td>
        <td>Name</td>
        <td>Price</td>
        <td>Description</td>
        <td>Producer</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items = "${product}" var = "product">
        <tr>
            <td>${product.getId()}</td>
            <td>
                <a href="/product?action=view&id=${product.getId()}">${product.getName()}</a>
            </td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getProducer()}</td>
            <td>
                <a href="/product?action=edit&id=${product.getId()}">edit</a>
            </td>
            <td>
                <a href="/product?action=delete&id=${product.getId()}">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

</body>
</html>

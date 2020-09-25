<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/9/2020
  Time: 8:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
  </head>
  <body>
<form action="/Calculator" method="post">
  <label>Product Description</label><br/>
  <input type="text" name="product description" placeholder="Product Description" value="..."/><br/>
  <label>List Price</label><br/>
  <input type="text" name="list price" placeholder="List Price" value="0"/><br/>
  <label>Discount Percent</label><br/>
  <input type="text" name="discount percent" placeholder="Discount Percent" value="0"/><br/>
  <input type="submit" id="submit" value="Calculator"/>
</form>

  </body>
</html>

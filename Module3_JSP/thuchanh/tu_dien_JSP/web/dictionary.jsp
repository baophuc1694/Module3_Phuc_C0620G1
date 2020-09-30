<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 25/9/2020
  Time: 10:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%
    Map<String, String> dic = new HashMap<>();
%>
<%
    dic.put("hello", "Xin Chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển sách");
    dic.put("computer", "Máy Tính");
    String search = request.getParameter("search");
    String result = dic.get(search);
    if (result != null){
        out.println("World: " + search);
        out.println("Dịch: " + result);
    }else {
        out.println("Not Found!!!!");
    }
%>

</body>
</html>

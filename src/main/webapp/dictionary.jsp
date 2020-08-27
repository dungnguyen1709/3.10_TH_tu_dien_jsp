<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: LapTop
  Date: 8/27/2020
  Time: 3:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Dictionary</title>
</head>
<body>
<%!
   Map<String,String> dic = new HashMap<>();
%>

<%
    dic.put("Hello","Xin Chao");
    dic.put("Goodbye","Tam Biet");
    dic.put("Thank You","Cam On");
    dic.put("My Love","Tinh Yeu");

    String search = request.getParameter("dic");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word : " + search);
        out.println("Result : " + result);
    } else {
        out.println("Not Found");
    }
%>
</body>
</html>

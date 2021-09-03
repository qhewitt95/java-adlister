<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 9/2/21
  Time: 9:28 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<html>
<head>
    <title>LOGIN PAGE</title>

</head>
<h1> Login Page.- </h1>
<form method="POST" action="/login.jsp" >

    <label for="username">Username</label>
    <input id="username" name="username" type="text">

    <label for="password">Password</label>
    <input id="password" name="password" type="password">

    <input type="submit">
</form>

<% if(request.getParameter("username")!= null && request.getParameter("password")!= null) {
    if(request.getParameter("username").equals("admin") && request.getParameter("password").equals("password")){
        response.sendRedirect("profile.jsp");
    }
}%>

<body>




</body>
</html>

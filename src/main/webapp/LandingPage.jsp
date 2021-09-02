<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 9/2/21
  Time: 9:31 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% request.setAttribute("welcomeMessage", "Welcome, " + request.getParameter("name")); %>
<html>
<head>
    <title>Landing</title>
</head>
<h2> This is the smart use of Expressive Language Message -> ${message}</h2>
<body>
<%@include file="partials/navbar.jsp"%>

<h1>${message}</h1>

</body>
</html>

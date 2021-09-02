<%--
  Created by IntelliJ IDEA.
  User: q
  Date: 9/2/21
  Time: 10:25 am
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%! %>
<% request.setAttribute("userName",request.getParameter("name")); %>
<$! String [] %>
<% request.setAttribute("listOfCars", cars); %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<c:choose>
    <c:when test="${userName == null}">
        <h1>Hello, Random User</h1>
    </c:when>

    <c:otherwise>
        <h1>Hello, ${userName}</h1>

    </c:otherwise>
    <%--<c:forEach var = "cars" items="${listOfCars}" >

        <p>${car}</p>


    </c:forEach>--%>


</c:choose>

</body>
</html>

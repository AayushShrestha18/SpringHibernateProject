<%-- 
    Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Customers</h1>


        <c:forEach var="customer" items="${customers}">
        <li>${customer.firstName} ${customer.lastName}</li>
        </c:forEach>

</body>
</html>

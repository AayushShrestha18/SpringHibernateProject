<%-- 
    Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="shared/header.jsp" %>
        <h1>Customers</h1>
        <c:forEach var="customer" items="${customers}">
            <li>${customer.firstName} ${customer.lastName}</li>
        </c:forEach>
<%@include file="shared/header.jsp" %>

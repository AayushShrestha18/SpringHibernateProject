
<%--
Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="../shared/header.jsp" %>
<%@include file="../shared/menu.jsp" %>
<h1>Customers</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/customers/add" class="btn btn-primary">Add Customers</a>
    </p>
</div>

<table class="table">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Added Date</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.id}</td>
            <td>${customer.firstName} ${customer.lastName}</td>
            <td>${customer.email}</td>
            <td>${customer.addedDate}</td>
            <td>${customer.status}</td>
            <td>
                <a href="javascript:void(0)" class="btn btn-default">
                    <span class="glyphicon glyphicon-envelope"/>
                </a> 
                <a href="${SITE_URL}/admin/customers/edit/${customer.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"/>
                </a> 
                    <a href="${SITE_URL}/admin/customers/delete/${customer.id}" class="btn btn-default" onclick="return confirm('Are you sure to delete?')">
                        <span class="glyphicon glyphicon-trash"/>
                    </a></td>                   
        </tr>

    </c:forEach>
</table>
<%@include file="../shared/footer.jsp" %>
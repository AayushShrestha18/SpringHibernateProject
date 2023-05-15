
<%--
Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="../shared/header.jsp" %>
<h1>Mail Templates</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/mailtemplates/add" class="btn btn-primary">Add Mail Templates</a>
    </p>
</div>

<table class="table">
    <tr>
        <th>Id</th>
        <th>Title</th>
        <th>Description</th>
        <th>Slug</th>
        <th>Status</th>
        <th>Action</th>
    </tr>
    <c:forEach var="mailtemplate" items="${mailtemplates}">
        <tr>
            <td>${mailtemplate.id}</td>
            <td>${mailtemplate.title}</td>
            <td>${mailtemplate.description}</td>
            <td>${mailtemplate.slug}</td>
            <td>${mailtemplate.status}</td>
            <td><a href="${SITE_URL}/mailtemplates/edit/${mailtemplate.id}" class="btn btn-success">
                    <span class="glyphicon glyphicon-pencil"/>
                </a> 
                <a href="${SITE_URL}/mailtemplates/delete/${mailtemplate.id}" class="btn btn-danger" onclick="return confirm('Are you sure to delete?')">
                    <span class="glyphicon glyphicon-trash"/>
                </a></td>                   
        </tr>

    </c:forEach>
</table>
<%@include file="../shared/footer.jsp" %>

<%--
Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="../shared/header.jsp" %>

<h1>Login</h1>
<form method="post">
    <c:if test="${param.error!=null}">
        <div class="alert alert-danger">
            <li>Invalid Username/Password</li>
        </div>
    </c:if>
  <div class="form-group">
    <label>Username</label>
    <input type="text" name="username" class="form-control"/>
  </div>
  <div class="form-group">
    <label>Password</label> 
    <input type="password" name="password" class="form-control"/>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
<%@include file="../shared/footer.jsp" %>
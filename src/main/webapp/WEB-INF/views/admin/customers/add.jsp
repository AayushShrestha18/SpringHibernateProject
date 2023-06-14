
<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h1>Add Customers</h1>
</div>

    <form method="POST" action="${SITE_URL}/admin/customers/save">
        <div class="form-group">
        <label>First Name:</label>
        <input type="text" name="firstName" class="form-control" required="required"/>
        </div>
        <div class="form-group">
        <label>Last Name:</label>
        <input type="text" name="lastName" class="form-control" required="required"/>
        </div>
        <div class="form-group">
        <label>Email:</label>
        <input type="text" name="email" class="form-control" required="required"/>
        </div>
        <div class="form-group">
        <label>Contact No:</label>
        <input type="text" name="contactNo" class="form-control" required="required"/>
        </div>
        <div class="checkbox">
        <label>Status:</label>
        <label><input type="checkbox" name="status"/>Active</label>
        </div>
        <div class="form-group">
        <button type="submit" class="btn btn-success" class="form-control">Save</button>
        <button type="submit" class="btn btn-success" name ="refresh" value="1" class="form-control">Save & Continue</button>
        <a href="${SITE_URL}/admin/customers" class="btn btn-danger">Back</a>
        </div>
    </form>
        
    

<%@include file="../shared/footer.jsp" %>
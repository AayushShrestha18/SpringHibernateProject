
<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h1>Add Mail Templates</h1>
</div>

    <form method="POST" action="${SITE_URL}/admin/mailtemplates/save">
        <div class="form-group">
            <label>Title:</label>
            <input type="text" name="title" class="form-control" required="required"/>
        </div>
        <div class="form-group">
            <label>Slug:</label>
            <input type="text" name="slug" class="form-control" required="required"/>
        </div>
        <div class="form-group">
            <label>Description:</label>
            <textarea type="text" name="description" class="form-control" required="required" style="height:150px"></textarea>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-success" class="form-control">Save</button>
            <a href="${SITE_URL}/admin/mailtemplates" class="btn btn-danger">Back</a>
        </div>
    </form>
        
<%@include file="../shared/footer.jsp" %>
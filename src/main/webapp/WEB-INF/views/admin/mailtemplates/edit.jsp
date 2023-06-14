
<%@include file="../shared/header.jsp" %>
<div class="page-header">
    <h1>Edit Mail Templates</h1>
</div>

    <form method="POST" action="${SITE_URL}/admin/mailtemplates/save">
        <div class="form-group">
            <label>Title:</label>
            <input type="text" name="title" class="form-control" required="required" value="${mailtemplate.title}"/>
        </div>
        <div class="form-group">
            <label>Slug:</label>
            <input type="text" name="slug" class="form-control" required="required" value="${mailtemplate.slug}"/>
        </div>
        <div class="form-group">
            <label>Description:</label>
            <textarea type="text" name="description" class="form-control" required="required" style="height:150px">${mailtemplate.description}</textarea>
        </div>
        <div class="checkbox">
            <label>Status:</label>
            <label><input type="checkbox" name="status" <c:if test="${mailtemplate.status}">checked="checked"</c:if>/>Active</label>
        </div>
        <input type="hidden" name="id" value="${mailtemplate.id}"/> 
        <div class="form-group">
            <button type="submit" class="btn btn-success" class="form-control">Save</button>
            <a href="${SITE_URL}/admin/mailtemplates" class="btn btn-danger">Back</a>
        </div>
    </form>
        
    
<%@include file="../shared/footer.jsp" %>
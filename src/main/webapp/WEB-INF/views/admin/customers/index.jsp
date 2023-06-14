
<%--
Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="../shared/header.jsp" %>
<h1>Customers</h1>
<div class="pull-right">
    <p>
        <a href="${SITE_URL}/admin/customers/add" class="btn btn-primary">Add Customers</a>
    </p>
</div>

<table class="table">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Email</th>
        <th>Added Date</th>
        <th>Complaint</th>
        <th>Action</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr class="row-${customer.id}"> 
            <td>${customer.id}</td>
            <td>${customer.firstName} ${customer.lastName}</td>
            <td>${customer.email}</td>
            <td>${customer.addedDate}</td>
            <td>
                <span class="total-complaints">${customer.complaintList.size()}</span> 
                <a href="javascript:void(0)" data-customer-name="${customer.firstName} ${customer.lastName}"
                 data-id="${customer.id}" class="add-complaint-btn btn btn-default">
                <span class="glyphicon glyphicon-envelope"/>
            </a></td>
            <td>
                <a href="${SITE_URL}/admin/customers/edit/${customer.id}" class="btn btn-default">
                    <span class="glyphicon glyphicon-pencil"/>
                </a> 
                    <a href="${SITE_URL}/admin/customers/delete/${customer.id}" class="btn btn-default" onclick="return confirm('Are you sure to delete?')">
                        <span class="glyphicon glyphicon-trash"/>
                    </a></td>                   
        </tr>
    </c:forEach>
</table>
  
  <!-- Modal -->
  <div class="modal fade" id="complaint-dialog" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title"></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <form id="complaint-form">
            <div class="modal-body">
                <div class="form-group">
                    <label>Subject:</label>
                    <input type="text" name="subject" class="form-control" required="required"/>
                </div>
                <div class="form-group">
                    <label>Message:</label>
                    <textarea type="text" name="message" class="form-control" required="required" style="height:150px"></textarea>
                </div>
            </div>
            <div class="modal-footer">
                <input type="hidden" id="complaint-customer-id" name="customer.id"/>
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="save-complaint-btn btn btn-primary">Add Complaint</button>
            </div>
        </form>
      </div>
    </div>
  </div>
  <script>
        $(document).ready(function(){
            $(".add-complaint-btn").click(function() {
                var $id=$(this).attr('data-id');
                $("#complaint-customer-id").val($id);
                $("#complaint-dialog").find('.modal-title')
                .html($(this).attr('data-customer-name'));
                $("#complaint-dialog").modal();
                $(".save-complaint-btn").click(function() {
                    $.post('${SITE_URL}/admin/customers/addComplaint',
                    $("#complaint-form").serialize(), function(res) {
                        if(res.trim()==='success') {
                            var $spanTotal=$(".row-"+$id).find(".total-complaints");
                            var $count=parseInt($spanTotal.html());
                            $spanTotal.html($count+1);
                            $("#complaint-dialog").modal('hide');
                        }    
                    });
                    return false;
                });
            });
        });
  </script>
<%@include file="../shared/footer.jsp" %>
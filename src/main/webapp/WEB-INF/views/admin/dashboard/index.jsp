
<%--
Document   : index
    Created on : Jul 5, 2018, 6:28:08 PM
    Author     : dell
--%>

<%@include file="../shared/header.jsp" %>
<link href="${SITE_URL}/static/css/admin/dashboard.css" rel="stylesheet">
<h1>Dashboard</h1>
<div class="row">
    <div class="col-md-4">
        <div class="dbox dbox--color-1">
            <div class="dbox__icon">
                <i class="glyphicon glyphicon-cloud"></i>
            </div>
            <div class="dbox__body">
                <span class="dbox__count">8,252</span>
                <span class="dbox__title">Lesson Plan</span>
            </div>
            
            <div class="dbox__action">
                <button class="dbox__action__btn">More Info</button>
            </div>				
        </div>
    </div>
    <div class="col-md-4">
        <div class="dbox dbox--color-2">
            <div class="dbox__icon">
                <i class="glyphicon glyphicon-download"></i>
            </div>
            <div class="dbox__body">
                <span class="dbox__count">100</span>
                <span class="dbox__title">Learning Resources</span>
            </div>
            
            <div class="dbox__action">
                <button class="dbox__action__btn">More Info</button>
            </div>				
        </div>
    </div>
    <div class="col-md-4">
        <div class="dbox dbox--color-3">
            <div class="dbox__icon">
                <i class="glyphicon glyphicon-heart"></i>
            </div>
            <div class="dbox__body">
                <span class="dbox__count">2502</span>
                <span class="dbox__title">Enrichment Content</span>
            </div>
            
            <div class="dbox__action">
                <button class="dbox__action__btn">More Info</button>
            </div>				
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-4">
        <div class="panel panel-primary">
            <div class="panel-heading">Total customers</div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-success">
            <div class="panel-heading">Total collection</div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
    </div>
    <div class="col-md-4">
        <div class="panel panel-default">
            <div class="panel-heading">Panel heading without title</div>
            <div class="panel-body">
              Panel content
            </div>
          </div>
    </div>
</div>
<div class="row">
    <div class="col-md-6">
        <div class="panel panel-primary">
            <div class="panel-heading">
                <h3 class="panel-title">
                    <span class="glyphicon glyphicon-bookmark"></span> Quick Shortcuts</h3>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="col-xs-6 col-md-6">
                    <a href="#" class="btn btn-danger btn-lg" role="button"><span class="glyphicon glyphicon-list-alt"></span> <br/>Apps</a>
                    <a href="#" class="btn btn-warning btn-lg" role="button"><span class="glyphicon glyphicon-bookmark"></span> <br/>Bookmarks</a>
                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-signal"></span> <br/>Reports</a>
                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-comment"></span> <br/>Comments</a>
                    </div>
                    <div class="col-xs-6 col-md-6">
                    <a href="#" class="btn btn-success btn-lg" role="button"><span class="glyphicon glyphicon-user"></span> <br/>Users</a>
                    <a href="#" class="btn btn-info btn-lg" role="button"><span class="glyphicon glyphicon-file"></span> <br/>Notes</a>
                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-picture"></span> <br/>Photos</a>
                    <a href="#" class="btn btn-primary btn-lg" role="button"><span class="glyphicon glyphicon-tag"></span> <br/>Tags</a>
                    </div>
                </div>
                <a href="http://www.jquery2dotnet.com/" class="btn btn-success btn-lg btn-block" role="button"><span class="glyphicon glyphicon-globe"></span> Website</a>
            </div>
        </div>
    </div>
    <div class="col-md-6">
        <div class="row">
            <div id="map_wrapper">
                <div id="map_canvas" class="mapping"></div>              
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col col-md-9">
        <div class="row">
            <div class="col col-md-5">
                <h4>Today Stats:</h4>
                        Visits<span class="pull-right strong">- 15%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="15"aria-valuemin="0" aria-valuemax="100" style="width:15%">15%</div>
                        </div>
                    
                        20 New Users<span class="pull-right strong">+ 30%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="30"aria-valuemin="0" aria-valuemax="100" style="width:30%">30%</div>
                        </div>
                    
                        359 Downloads<span class="pull-right strong">+ 8%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="8"aria-valuemin="0" aria-valuemax="100" style="width:8%">8%</div>
                        </div>
            </div>
            <div class="col col-md-5">
                <h4>This Month Stats:</h4>
                        Visits<span class="pull-right strong">+ 45%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="45"aria-valuemin="0" aria-valuemax="100" style="width:45%">45%</div>
                        </div>
                    
                        395 New Users<span class="pull-right strong">+ 57%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="57"aria-valuemin="0" aria-valuemax="100" style="width:57%">57%</div>
                        </div>
                    
                        12.593 Downloads<span class="pull-right strong">+ 25%</span>
                         <div class="progress">
                            <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="25"aria-valuemin="0" aria-valuemax="100" style="width:25%">25%</div>
                        </div>
            </div>
        </div>
    </div>
</div>

<script src="${SITE_URL}/static/js/map/google.js" type="text/javascript"></script>  
<%@include file="../shared/footer.jsp" %>
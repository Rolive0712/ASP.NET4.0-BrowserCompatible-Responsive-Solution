<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ucTopMenu.ascx.cs" Inherits="RiskManagementDashboard.Common.ucTopMenu" %>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span><span
                    class="icon-bar"></span><span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Dashboard</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="javascript:;" target="_blank">Request Access</a></li>
                <li><a href="javascript:;" target="_blank">Report Issue</a></li>
                <li><a data-toggle="modal" href="#feedbackModal">Provide Feedback</a></li>
                <li><a href="javascript:;" target="_blank">Help</a></li>
            </ul>
        </div>
    </div>
</div>

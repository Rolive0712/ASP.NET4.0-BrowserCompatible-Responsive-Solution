<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="RiskManagementDashboard.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/html" id="koNotifyTemplate">
    <tr>
        <td><a data-bind="text: EntityID, style: {'textDecoration': 'underline', 'color':'blue'}" href="#" id="aProjId"></a></td>
        <td style="font-size: 12px; font-family:Verdana, Arial" data-bind="text: EntityName"></td>
        <td style="font-size: 12px; font-family:Verdana, Arial" data-bind="text: Manager"></td>
        <td style="font-size: 12px; font-family:Verdana, Arial" data-bind="text: Notification_Desc"></td>
        <td style="font-size: 12px; font-family:Verdana, Arial" data-bind="text: Details"></td>
        <td style="font-size: 12px; font-family:Verdana, Arial" data-bind="text: Notification_Help"></td>
        <td><input type="button" id="btnAction" value="take action" class="btn btn-mini btn-primary" /></td>
    </tr>
    </script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12">
                <div class="alert alert-success" id="divWelcome">
                    <button class="close" data-dismiss="alert">
                        &times;</button>
                    <strong>Welcome !!! Sondurkar, Nitin</strong>
                </div>
                <div class="well widget">
                    <div class="header">
                        <div class="pull-right">
                            <button class="btn btn-primary" href="input.html">
                                Create New</button>
                        </div>
                        Custom Reports
                    </div>
                    <div class="content">
                        <p>
                            Create custom reports.</p>
                        <div class="space">
                        </div>
                    </div>
                </div>
                <ul class="nav nav-tabs responsive" id="myTab">
                    <li class="active"><a href="#prjDeliverables">Project deliverables</a></li>
                    <li><a href="#progExceptions">Milestone & Program Exceptions</a></li>
                    <li><a href="#timesheetExceptions">Timesheet Exceptions</a></li>
                </ul>
                <div class="tab-content responsive">
                    <div class="tab-pane active" id="prjDeliverables">
                        <section id="Section1">
                            <table class="table table-striped" id="Table1">
                                <thead>
                                    <tr>
                                        <th>
                                            EntityId
                                        </th>
                                        <th>
                                            Project Name
                                        </th>
                                        <th>
                                            Manager
                                        </th>
                                        <th>
                                            Description
                                        </th>
                                        <th>
                                            Details
                                        </th>
                                        <th>
                                            Help
                                        </th>
                                        <th>
                                            Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody id="tbody1" style="font-family: Verdana; font-size: 9px" data-bind="template: { name: 'koNotifyTemplate' , foreach: notifications }">
                                </tbody>
                            </table>
                        </section>
                    </div>
                    <div class="tab-pane" id="progExceptions">
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th colspan="2">
                                        Item
                                    </th>
                                    <th>
                                        Due Date
                                    </th>
                                    <th>
                                        Action
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>
                                        <span class="badge badge-success">10</span>
                                    </td>
                                    <td>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec turpis quam,
                                        ut eleifend tortor.
                                    </td>
                                    <td>
                                        04/03/12
                                    </td>
                                    <td>
                                        <a href="#">View</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="badge badge-important">15</span>
                                    </td>
                                    <td>
                                        Nullam nec turpis quam, ut eleifend tortor. Lorem ipsum dolor sit amet, consectetur
                                        adipiscing elit.
                                    </td>
                                    <td>
                                        04/20/12
                                    </td>
                                    <td>
                                        <a href="#">View</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <span class="badge badge-warning">20</span>
                                    </td>
                                    <td>
                                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec turpis quam,
                                        ut eleifend tortor.
                                    </td>
                                    <td>
                                        05/30/12
                                    </td>
                                    <td>
                                        <a href="#">View</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tab-pane" id="timesheetExceptions">
                        <p>
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh
                            euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad
                            minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip
                            ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate
                            velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero
                            eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit
                            augue duis dolore te feugait nulla facilisi.
                        </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-12 col-sm-12">
                <div class="well widget">
                    <div class="header">
                        <h5>
                            Announcements</h5>
                        <div class="pull-right buttons">
                            <a class="btn btn-mini btn-primary" href="#myCarousel" data-slide="prev"><i class="icon-chevron-left">
                            </i></a><a class="btn btn-mini btn-primary" href="#myCarousel" data-slide="next"><i
                                class="icon-chevron-right"></i></a>
                        </div>
                    </div>
                    <div class="content">
                        <div id="myCarousel" class="carousel slide">
                            <div class="carousel-inner">
                                <div class="active item">
                                    <div class="mycarousel-caption">
                                        <h5>
                                            Virtual Reports Will Be Down for Maintenance on July 4, 2012</h5>
                                        <p>
                                            Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi
                                            porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.
                                            <a href="#">Click Here</a>
                                        </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="mycarousel-caption">
                                        <h5>
                                            Second Thumbnail label</h5>
                                        <p>
                                            Lorem ipsum dolor sit amet, consectetur <a href="#">adipiscing</a> elit. Fusce pharetra
                                            lacus at sem fermentum id rutrum turpis placerat. Integer enim neque, semper quis
                                            lacinia eu, facilisis in elit.
                                        </p>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="mycarousel-caption">
                                        <h5>
                                            Third Thumbnail label</h5>
                                        <p>
                                            Vestibulum laoreet facilisis sapien, sit amet eleifend ligula aliquet vel. Nulla
                                            pellentesque consectetur congue. Phasellus eu malesuada nunc.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="Scripts/AppScripts/default.js" type="text/javascript"></script>
</asp:Content>

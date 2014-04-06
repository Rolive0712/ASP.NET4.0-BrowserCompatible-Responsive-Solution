<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="pgLanding.aspx.cs" Inherits="RiskManagementDashboard.pgLanding" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="Scripts/GraphScripts/RGraph.common.core.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.common.key.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.common.dynamic.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.common.tooltips.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.common.effects.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.pie.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.line.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/RGraph.bar.js" type="text/javascript"></script>
    <script src="Scripts/GraphScripts/jquery.flippy.js" type="text/javascript"></script>
    <script src="Scripts/AppScripts/LandingPage.js" type="text/javascript"></script>
    <br />
    
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                <div class="row placeholders">
                    <div class="col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('risks');">
                            <h4>
                                # of risks</h4>
                            <h1>
                                32</h1>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('issues');">
                            <h4>
                                # of issues</h4>
                            <h1>
                                11</h1>
                            <asp:Button ID="btnIssues" ClientIDMode="Static" runat="server" CssClass="btn btn-mini btn-primary"
                                Text="More" OnClick="btnIssues_Click" />
                        </div>
                    </div>
                    <div class=" col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('projects');">
                            <h4>
                                # of active projects</h4>
                            <h1>
                                6</h1>
                        </div>
                    </div>
                </div>
                <div class="row placeholders">
                    <div class=" col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('status');" style="height: 250px;">
                            <h4>
                                Status</h4>
                            <canvas id="statusChart" width="240" height="180">[No canvas support]</canvas>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('financials');" style="height: 250px;">
                            <h4>
                                Financials</h4>
                            <canvas id="financialsChart" width="240" height="180">[No canvas support]</canvas>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-12 col-xs-12 col-sm-12">
                        <div class="well placeholder" onclick="flip('cost');" style="height: 250px;">
                            <h4>
                                Forecast vs Actual</h4>
                            <canvas id="costChart" width="240" height="180">[No canvas support]</canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                <div class="well placeholder" style="background: #dddddd;">
                    <h2 style="line-height: 22px; margin-top: 0px; padding-top: 0px; padding-bottom: 5px;
                        color: navy;">
                        Notifications</h2>
                    <div class="alert alert-error" title="Please complete  deliverables"
                        style="cursor: pointer;">
                        <strong>103 - ResolveIT 3.2 maintenance</strong><br />
                        Exceeded by 11.0 hour
                    </div>
                    <div class="alert alert-error" title="Please complete activities"
                        style="cursor: pointer;">
                        <strong>105 - ResolveIT 3.4 performance pack</strong><br />
                        Exceeded by 6.0 hour
                    </div>
                    
                </div>
            </div>
        </div>
    </div>

</asp:Content>

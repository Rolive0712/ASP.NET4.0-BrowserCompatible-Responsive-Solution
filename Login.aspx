<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs" Inherits="RiskManagementDashboard.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="body">
        <div id="content">
            <style>
                #hero-image, #hero-image i
                {
                    background-image: url(Images/city.jpg);
                    background-repeat: no-repeat;
                    height: 502px;
                    width: 100%;
                }
                #hero-image i
                {
                    display: none;
                    display: block \9;
                }
                #hero-image
                {
                    background-size: cover;
                    z-index: -1;
                    position: absolute;
                    overflow: hidden;
                }
            </style>
            <!--[if lte IE 8]>
                <script>
                $(document).ready(function(){
                   function resize(){
                       var winSize=$(window).width(),imgSize=985;
                       if (winSize>imgSize) {
                           $('#hero-image i').css('zoom',winSize/imgSize);
                       } else {
                           $('#hero-image i').css('zoom',1);
                       }
                   }
                   resize();
                   $(window).resize(resize);
                });
                </script>
            <![endif]-->
            <div id="hero-image">
                <i></i>
            </div>
            <div class="container-fluid bd">
                <div class="row">
                    <div class="col-lg-3 col-md-12 col-sm-12" style="width: 209px;">
                        <div class="loginTop">
                        </div>
                        <div id="login">
                            <h2>
                                Sign on using SSO</h2>
                            <label>
                                Username</label>
                            <input type="text" runat="server" id="txtSOEID" name="txtSOEID" required />
                            <label>
                                Password</label>
                            <input type="password" id="password" disabled name="password" class="login-input" />
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-mini btn-primary" OnClick="Button1_Click"
                                Text="Sign On" />
                            <div class="clearfix">
                            </div>
                        </div>
                        <div id="help">
                            <h2>
                                Need Help?</h2>
                            <p>
                                You can view our user guide <a href="#">here</a> for frequently asked questions</p>
                            <p>
                                You can also resets passwords/pins over the phone. <a href="#">Click here</a> for
                                a list of access numbers</p>
                        </div>
                    </div>
                    <div class="col-lg-9 col-md-12 col-sm-12">
                        <div id="slogan">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="clearfix">
    </div>
</asp:Content>

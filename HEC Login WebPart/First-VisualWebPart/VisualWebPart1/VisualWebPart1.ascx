<%@ Assembly Name="$SharePoint.Project.AssemblyFullName$" %>
<%@ Assembly Name="Microsoft.Web.CommandUI, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI" Assembly="System.Web.Extensions, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" %>
<%@ Import Namespace="Microsoft.SharePoint" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="VisualWebPart1.ascx.cs" Inherits="First_VisualWebPart.VisualWebPart1.VisualWebPart1" %>

<link href="../Style%20Library/HEC/bootstrap.css" rel="stylesheet" />
<script src="../Style%20Library/HEC/js-image-slider.js"></script>
<link href="../Style%20Library/HEC/js-image-slider.css" rel="stylesheet" />

<%--Main Screen Header --%>


<div class="top-header" style="margin-bottom: 20px;">
    <asp:Image runat="server" ID="imgLogo" AlternateText="HEC Logo" />

</div>

<input type="text" class="form-control signon" id="hdnActiveView" style="display: none" runat="server" />

<asp:MultiView ID="mvHomeScreen" runat="server" ActiveViewIndex="1">
    <asp:View runat="server" ID="mainScreen">
        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12 forground">
                <div class="col-lg-8 col-sm-8 col-xs-8">
                    <div id="sliderFrame">
                        <div id="slider">
                            <img src="../Style%20Library/HEC/Pic1.jpg" alt="MSP Summit – North Region" />
                            <img src="../Style%20Library/HEC/Pic2.jpg" alt="2 Weeks Workshop on Windows Store App Development at Air University" />
                            <img src="../Style%20Library/HEC/Pic3.jpg" alt="Microsoft Campus Day at Karakorum International University - Gilgit" />
                            <img src="../Style%20Library/HEC/Pic4.jpg" alt="MSP Summits – South region" />
                            <img src="../Style%20Library/HEC/Pic5.jpg" alt="Microsoft Visits Mehran University" />
                            <img src="../Style%20Library/HEC/Pic6.jpg" alt="SQL Training Session in AJKU" />
                            <img src="../Style%20Library/HEC/Pic7.jpg" alt="Student 2 Business Session at FAST Peshawar" />
                            <img src="../Style%20Library/HEC/Pic8.jpg" alt="Student 2 Business Session at Preston University" />
                            <img src="../Style%20Library/HEC/Pic9.jpg" alt="Technical Skill Development and Imagine Cup Drive at NUST SEECS" />
                            <img src="../Style%20Library/HEC/Pic10.jpg" alt="Unity 3D Training - Series of 3 Workshops" />
                            <img src="../Style%20Library/HEC/Pic11.jpg" alt="Campus Day @ University of Malakand" />
                            <img src="../Style%20Library/HEC/Pic13.jpg" alt="Unity3D Training at Abid Event Complex, Lahore" />
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-4 col-xs-4">
                    <div class="panel panel-info" style="border-color: #63a284;">
                        <div class="panel-heading" style="background-color: #63a284;">
                            <h3 class="panel-title customtitle">Event Management System (EMS)</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-chart-area">

                                <div class="row" style="margin-bottom: 0px;">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">

                                        <p><small>Welcome to Event Management System for HEC and partner Universities/Organizations.</small></p>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">
                                        <div>
                                            <img src="../Style%20Library/HEC/lock.png" style="height: 15px; margin-top: -6px;" />
                                            <label><small>Enter Microsoft LiveID to login</small></label>
                                        </div>
                                    </div>

                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-xs-12" style="margin-left: -14px">
                                        <div class="col-lg-10 col-sm-10 col-xs-10">
                                            <div class="form-group">
                                                <asp:TextBox ID="Email" Text="" CssClass="form-control" placeholder="Enter Email Address" pattern='[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$' title="Please enter email in format youremail@livedomain.com" runat="server"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-lg-2 col-sm-2 col-xs-2" style="margin-left: -22px">
                                            <asp:Button ID="btnlogin" CssClass="btn btn-default pull-left" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                        </div>

                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-xs-12" style="height: 10px;">
                                        <div class="form-group">
                                            <asp:LinkButton ID="btnsignUp" class="pull-left" runat="server" Text="Click to register" OnClick="btnSignUp_Click" OnClientClick="" Style="margin-top: -10px; font-size: 12px !important" />
                                        </div>

                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">
                                        <div class="form-group">
                                            <asp:Label ID="lblMessage" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important"></asp:Label>
                                            <asp:Label ID="loginmessage" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important"></asp:Label>
                                        </div>
                                    </div>
                                </div>


                                <div class="row" style="margin-bottom: -10px;">
                                    <div class="col-lg-12 col-sm-12 col-xs-12" style="margin-top: 12px;">
                                        <a href="http://www.microsoft.com/en-us/account/default.aspx" class="pull-left"><small>What's Microsoft Live ID?</small></a><br />
                                        <a href="https://signup.live.com/signup.aspx?lic=1" runat="server" class="pull-left"><small>Create Microsoft Live ID here!</small></a>
                                    </div>
                                </div>

                                <%-- <div class="row">
                                    <div class="col-lg-12" style="margin-top: 12px;">
                                        <footer>
                                           <img src="../Style%20Library/HEC/lock.png" style="height: 15px;" />
                                            <small>You need Microsoft LiveID to use EMS</small>

                                        </footer>
                                    </div>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>




            </div>
        </div>



        <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12" style="margin-top: -17px;">
                <div class="col-lg-8 col-sm-8 col-xs-8 margintop" style="float: right;">

                    <div class="panel panel-info" id="CalendarPanel" style="border-color: #63a284;">
                        <div class="panel-heading" style="background-color: #63a284;">
                            <h3 class="panel-title customtitle">Event Calendar</h3>
                        </div>
                        <div class="panel-body" id="panel-body">


                            <div>
                                <div class="row">
                                    <div class="col-lg-6 col-sm-6 col-xs-6">
                                        <div>
                                            <img src="../Style%20Library/HEC/Green.png" style="margin-top: -6px;" />
                                            <label><small>Agricultural & Veterinary Animal Sciences</small></label>
                                        </div>
                                        <div>
                                            <img src="../Style%20Library/HEC/purple.png" style="margin-top: -6px;" />
                                            <label><small>Biological and Medical Sciences</small></label>
                                        </div>
                                        <div>
                                            <img src="../Style%20Library/HEC/blue.png" style="margin-top: -6px;" />
                                            <label><small>Business & Administration & Management</small></label>
                                        </div>
                                    </div>

                                    <div class="col-lg-6 col-sm-6 col-xs-6">
                                        <div>
                                            <img src="../Style%20Library/HEC/lightpink.png" style="margin-top: -6px;" />
                                            <label><small>Engineering & Technology</small></label>
                                        </div>
                                        <div>
                                            <img src="../Style%20Library/HEC/Red.png" style="margin-top: -6px;" />
                                            <label><small>Physical Sciences</small></label>
                                        </div>
                                        <div>
                                            <img src="../Style%20Library/HEC/skyBlue.png" style="margin-top: -6px;" />
                                            <label><small>Social Sciences</small></label>
                                        </div>
                                    </div>


                                </div>



                                <div id="morris-chart-area2">
                                    <div class="row" id="calendarRow" style="height: 550px;">
                                        <div id="calenderLoader" style="display: none; width: inherit; margin-left: 1.25%;">
                                            <%--<div id="CalenderEventsHeading" class="pCustomTitle pHeadingCustom">Events Calender</div>--%>
                                            <div>
                                                <div>
                                                    <select id="drpdwnDisciplinelst" class="form-control inline" style="width: 25% !important; margin-top: 13px; float: left !important; z-index: 10; position: relative;" onchange="SearchCalendar();"></select>
                                                </div>
                                            </div>
                                            <div id="calenderLoaderView" class="dhx_cal_container" style='width: inherit; height: 100%; overflow: visible;'>
                                                <div class="dhx_cal_navline">
                                                    <div class="dhx_cal_prev_button">&nbsp;</div>
                                                    <div class="dhx_cal_next_button">&nbsp;</div>
                                                    <div id="dhx_cal_today_button" class="dhx_cal_today_button"></div>
                                                    <div class="dhx_cal_date"></div>
                                                    <%--<div class="dhx_cal_tab" name="day_tab" style="right: 204px; display:none"></div>
                                                    <div class="dhx_cal_tab" name="week_tab" style="right: 140px; display:none"></div>--%>
                                                    <%--<div class="dhx_cal_tab" id="timeline_tab" name="timeline_tab" style="display: none"></div>--%>
                                                    <div class="dhx_cal_tab" id="month_tab" name="month_tab" style="right: 76px; display: none"></div>
                                                </div>
                                                <div class="dhx_cal_header" style="overflow: visible; height: 100%; border-left: 1px solid #CECECE">
                                                </div>
                                                <div class="dhx_cal_data " style="overflow: visible; height: 100%;">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-4 col-xs-4 margintop">
                    <div class="panel panel-info" id="SecondryDiv1" style="margin-bottom: 0px; border-color: #ffc300; font-size: 13px;">
                        <div class="panel-heading" style="background-color: #ffc300;">
                            <h3 class="panel-title customtitle">About EMS</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-chart-area-1">

                                <div class="row" style="margin-bottom: 0px;">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">

                                        <p>
                                            <small>The National Event Management System is a facility provided to you by Higher Education Commission to effectively create, control and manage all aspects of your trainings and events. 

Register yourself today to get notified of all upcoming trainings and workshops, designed and selected for you based on your choice of discipline, create your own trainings or arrange meetings at your own campus. 
                                            </small>
                                        </p>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-4 col-xs-4 margintop">
                    <div class="panel panel-info" id="SecondryDiv2" style="margin-bottom: 0px; border-color: #00b6f7; font-size: 13px;">
                        <div class="panel-heading" style="background-color: #00b6f7;">
                            <h3 class="panel-title customtitle">HEC - Microsoft Education Alliance</h3>
                        </div>
                        <div class="panel-body">
                            <div id="morris-chart-area-2">

                                <div class="row" style="margin-bottom: 0px;">
                                    <div class="col-lg-12 col-sm-12 col-xs-12">

                                        <p>
                                            <small>Higher Education Commission is striving to enhance the whole education eco system through technology and Educational Alliance Agreement between HEC and Microsoft has been a remarkable initiative which has delivered a promising value to Faculties, Students and Staff at universities across Pakistan in the last three years.
HEC & Microsoft are striving to provide the Academia with latest tools and technologies available to promote productivity and address the challenges we all face today.
                                            </small>
                                        </p>

                                    </div>
                                </div>


                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </asp:View>
    <asp:View runat="server" ID="signUpScreen">

        <div class="row">

            <div class="col-lg-12" id="divSignUp" runat="server">
                <div class="panel panel-info" style="border-color: #63a284;">
                    <div class="panel-heading" style="background-color: #63a284">


                        <h3 class="panel-title customtitle">EMS Registration Application <small><span class="text-danger">(Please fill and submit application) </span></small></h3>
                    </div>
                    <div class="panel-body">
                        <div id="morris-chart-area3">
                            <div class="row">
                                <div class="col-lg-12">

                                    <div style="margin-bottom: 50px;">
                                        <div class="form-group">

                                            <asp:Label ID="lblSignUpMessage" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important"></asp:Label>

                                        </div>
                                    </div>
                                </div>


                                <div class="col-lg-6">

                                    <div class="row" style="margin-bottom: 20px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Sign-in ID/Email Address</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="emailaddress" Text="" MaxLength="100" placeholder="Enter Microsoft Live ID Email" pattern='[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$' title="Please enter email in format youremail@livedomain.com" runat="server" CssClass="form-control"></asp:TextBox>
                                            <asp:Label ID="lblSignUpMessage3" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important"></asp:Label>
                                            <br />
                                            <a href="http://www.microsoft.com/en-us/account/default.aspx" class="pull-left"><small>What's Microsoft Live ID?</small></a><br />
                                            <a href="https://signup.live.com/signup.aspx?lic=1" runat="server" class="pull-left"><small>Create Microsoft Live ID here!</small></a>


                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Title</small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:DropDownList ID="ddlTitle" runat="server" class="form-control">
                                                <asp:ListItem Text="Select" Value="-1"></asp:ListItem>
                                                <asp:ListItem Text="Mr" Value="1"></asp:ListItem>
                                                <asp:ListItem Text="Ms" Value="2"></asp:ListItem>
                                                <asp:ListItem Text="Mrs" Value="3"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>First name</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">

                                            <asp:TextBox ID="FName" Text="" MaxLength="20" placeholder="Enter First Name" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>


                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Last Name</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="LName" Text="" MaxLength="20" placeholder="Enter Last Name" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Mobile Number</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="phone" Text="" MaxLength="13" placeholder="Mobile Number  i.e. +920000000000" pattern='[\+]\d{12}' title="Enter Mobile Number  i.e. +920000000000" runat="server" CssClass="form-control"></asp:TextBox>
                                            <h5 class="pull-left" style="margin-left: 5px"><small>Enter Mobile Number  i.e. +92000000000</small></h5>

                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left"><small>Address Line 1 </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">

                                            <asp:TextBox ID="address" maxsize="100" Rows="3" MaxLength="60" TextMode="MultiLine" placeholder="Enter Permanent Address" Text="" runat="server" CssClass="form-control"></asp:TextBox>

                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Country</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:DropDownList ID="ddlCountry" OnSelectedIndexChanged="ddlCountry_SelectedIndexChanged" AutoPostBack="True" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>
                                    <div id="divRegion" class="row" style="margin-bottom: 10px;" runat="server">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Region/Province</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:DropDownList ID="ddlRegion" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>City </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:DropDownList ID="ddlCity" runat="server" CssClass="form-control"></asp:DropDownList>

                                        </div>
                                    </div>





                                    <div class="row" style="margin-bottom: 10px;" id="divCNIC" runat="server">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>CNIC Number</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="cnic" Text="" MaxLength="15" placeholder="Enter CNIC" pattern='\d{5}[\-]\d{7}[\-]\d{1}' title="Enter CNIC (example: 00000-0000000-0)" runat="server" CssClass="form-control"></asp:TextBox>
                                            <%--<asp:Label ID="lblpassport" runat="server">Passport Number/Traveling Doc. Number <span id="reqPassport" class="requiredField">*</span></asp:Label>--%>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 5px"><small class="pull-left">Note: Use your CNIC (example: 00000-0000000-0)</small>
                                                <br>
                                                <small class="pull-left">Foreign users, Please Enter your Passport /Travel Document Number </small></h5>


                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;" id="divPassport" runat="server">
                                        <div class="col-lg-4">
                                            <label class="pull-left"><small>Passport Number/Traveling Doc. Number</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="passport" Text="" MaxLength="50" placeholder="Enter Passport Number " runat="server" CssClass="form-control"></asp:TextBox>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 5px"><small class="pull-left">For Non-Pakistani applicants please enter</small>
                                                <br>
                                                <small class="pull-left">your Passport /Travel Document Number instead of CNIC.</small>
                                                <br>
                                                <small class="pull-left">If your passport ID is AB78902 then enter 78902 </small></h5>


                                        </div>
                                    </div>


                                </div>

                                <div class="col-lg-6">
                                    <div class="row" style="margin-bottom: 90px;" id="divVerify" runat="server">
                                        <div class="col-lg-4">
                                            <asp:Button ID="btnCodeVerify" runat="server" CssClass="btn btn-default btn-lg pull-left" Text="Verify Email" OnClick="btnVerifyCode_Click" />

                                        </div>
                                        <div class="col-lg-8">

                                            <h5 id="lblEmailCode" runat="server" class="pull-left" style="margin-top: 5px;"><small class="pull-left">Please Verify Email Address, in order to continue with Registration.</small>
                                                <br />
                                                <small class="pull-left">Click on 'Verify Email' to receive Verification Code. </small></h5>

                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 30px;" id="divContinue" runat="server">
                                        <div class="col-lg-4">
                                            <asp:Button ID="btnCheckCode" runat="server" CssClass="btn btn-default btn-lg pull-left" Text="Continue" OnClick="btnContinue_Click" />

                                        </div>
                                        <div class="col-lg-8">
                                            <asp:TextBox ID="emailCode" Text="" MaxLength="100" placeholder="Enter Verification Code" runat="server" CssClass="form-control"></asp:TextBox>
                                            <h5 id="H1" runat="server" class="pull-left" style="margin-top: 5px;"><small class="pull-left">An Email has been sent to the provided email address</small>
                                                <br />
                                                <small class="pull-left">Please enter verification code received in email and Click 'Continue'. </small></h5>
                                            <asp:Label ID="lblSignUpMessage2" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="margin-bottom: 5px !important; font-size: 12px !important"></asp:Label>
                                            <asp:LinkButton ID="LinkButton1" class="pull-left" runat="server" Text="Resend Code" OnClick="btnResendCode_Click" OnClientClick="" Style="margin-top: 5px !important; font-size: 12px !important" />
                                        </div>
                                    </div>










                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Occupation </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">

                                            <asp:DropDownList ID="ddlOccupation" runat="server" CssClass="form-control"></asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left" style="margin-top: 8px;"><small>Primary Affiliation </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">

                                            <asp:DropDownList ID="ddlprimaryAffiliation" runat="server" CssClass="form-control"></asp:DropDownList>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 16px"><small class="pull-left">Please select University/Organization you are primarily affiliated with.</small>
                                                <br>
                                                <small class="pull-left">Your Primary Affiliation's authority will have to verify and approve your application for you to use HEC-EMS</small></h5>
                                        </div>
                                    </div>




                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left"><small>University/Organization - Affiliation </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:ListBox ID="lstAffiliation" runat="server" SelectionMode="Multiple" CssClass="form-control"></asp:ListBox>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 16px"><small class="pull-left">Please select University/Organizations you are affiliated with.</small>
                                                <br>
                                                <small class="pull-left">Press Ctrl key to select multiple items</small></h5>

                                        </div>
                                    </div>

                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left"><small>Interested in Events:</small> <span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">

                                            <asp:ListBox ID="lstInterest" runat="server" OnSelectedIndexChanged="lstInterest_SelectedIndexChanged" SelectionMode="Multiple" AutoPostBack="True" CssClass="form-control"></asp:ListBox>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 16px"><small class="pull-left">Please select area(s) of interest. Press Ctrl key to select multiple items</small>
                                                <br>
                                                <small class="pull-left">You will receive alerts for any event scheduled for the Interest Areas selected above</small></h5>

                                        </div>
                                    </div>
                                    <div class="row" style="margin-bottom: 10px;">
                                        <div class="col-lg-4">
                                            <label class="pull-left"><small>Interested in Events (Specialized Sub-Category): </small><span class="text-danger">*</span></label>
                                        </div>
                                        <div class="col-lg-8">
                                            <asp:ListBox ID="lstSubDomain" runat="server" SelectionMode="Multiple" CssClass="form-control"></asp:ListBox>
                                            <h5 class="pull-left" style="margin-top: 5px; margin-left: 16px"><small class="pull-left">Please select sub-category of area(s) of interest. Press Ctrl key to select multiple items</small>
                                                <br>
                                                <small class="pull-left">You will receive alerts for any event scheduled for specifically related to these sub-category of fields selected above</small></h5>


                                        </div>
                                    </div>





                                </div>


                            </div>



                            <div class="row" style="margin-top: 20px;">
                                <div class="buttons">
                                    <asp:Button ID="btnsubmit" runat="server" CssClass="btn btn-default" Text="Submit Application" OnClick="btnSubmit_Click" />
                                    <asp:Button ID="btnreset" runat="server" CssClass="btn btn-default" Text="Reset Application" OnClick="btnReset_Click" />
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Cancel" OnClick="btnClose_Click" />
                                    <%-- <asp:Label ID="lblSignup" runat="server"></asp:Label>--%>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>



            <div class="col-lg-12" id="divConfirmation" runat="server">
                <div class="panel panel-info" style="height: 500px; border-color: #63a284;">
                    <div class="panel-heading" style="background-color: #63a284">
                        <h3 class="panel-title customtitle">EMS Application Confirmation </h3>
                    </div>
                    <div class="panel-body">
                        <div id="morris-chart-area-4">
                            <div class="row" id="divConfirmation1" runat="server">
                                <div class="col-lg-12">
                                    <div style="margin-bottom: 50px;">
                                        <div class="form-group">
                                            <asp:Label ID="Label1" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important; text-align: center !important; width: 100%;">Thank you for Registering.</asp:Label>
                                            <br />
                                            <asp:Label ID="Label2" TextMode="multiline" runat="server" CssClass="text-danger pull-left" Style="font-size: 12px !important; text-align: center !important; width: 100%;">Your Application has been successfully submitted and Email has been sent to your Microsoft Live ID.</asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-offset-5">
                                    <asp:Button ID="Button4" runat="server" CssClass="btn btn-default" Text="Go To Main Page" OnClick="btnClose_Click" />
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>


    </asp:View>

</asp:MultiView>

<table id="LoginArea">
    <tr>
        <td></td>
    </tr>
    <tr>
        <td>
            <asp:DropDownList ID="ddltickets" runat="server" Style="display: none"></asp:DropDownList>
        </td>
    </tr>
</table>
<div class="footer">
    <table class="table" style="align-content: center; margin-bottom: 0;">
        <tbody class="1" style="margin-top: 200px;">
            <tr class="row" style="align-content: center;">

                <td class="col-lg-1" style="border-top: 0px; padding-top: 30px;"></td>
                <td class="col-lg-3" style="border-top: 0px; padding-top: 20px;">
                    <div class="cfmenucap" style="color: #ffc300; font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif !important; font-weight: bold;">
                        Helpful Links
                    </div>
                </td>
                <td class="col-lg-4">
                    <div class="cfmenucap"></div>
                </td>
                <td class="col-lg-3 col-lg-offset-2" style="padding-top: 20px;">
                    <div class="cfmenucap" style="color: #ffc300; font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif !important; font-weight: bold; margin-left: 0;">
                        Stay Connected
                    </div>
                </td>
            </tr>
            <tr class="row" style="align-content: center;">

                <td class="col-lg-1" style="border-top: 0px; padding-top: 30px;"></td>

                <td class="col-lg-3 " style="border: 0;">
                    <div class="col-lg-12  fmenu" style="padding: 0;">
                        <ul class="list-unstyled" style="font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif; text-decoration: none; font-family: sans-serif; /* list-style-type: square; */ padding-left: 15px; font-size: 12px;">
                            <li><a class="customtitle" href="http://www.hec.gov.pk/InsideHEC/Divisions/HRD/Scholarships/Pages/Scholarship.aspx" style="/* font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif; */    
    text-decoration: none; color: #ffffff !important; font-family: helvetica;">HEC Scholarships</a></li>
                            <li><a class="customtitle" href="http://das.hec.gov.pk/">Degree Attestation</a></li>
                            <li><a class="customtitle" href="http://www.hec.gov.pk/OurInstitutes/Pages/Default.aspx">Recognized Universities</a></li>
                        </ul>
                    </div>
                </td>
                <td class="col-lg-3" style="border: 0;">
                    <div class="col-lg-12">
                        <ul class="list-unstyled fmenu" style="font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif; text-decoration: none; /* list-style-type: square; */ padding-left: 0px; font-size: 12px;">
                            <li><a class="customtitle" href="http://www.hec.gov.pk/InsideHEC/Divisions/LearningInnovation/Pages/newlayout.aspx">Learning Innovation</a></li>
                            <li><a class="customtitle" href=" http://www.hec.gov.pk/InsideHEC/Divisions/QALI/QADivision/Pages/HECRecognizedJournals.aspx">Recognized Journals</a></li>
                            <li><a class="customtitle" href="http://hec.gov.pk/InsideHEC/Divisions/eReforms/Pages/Main.aspx">E-Academia</a></li>
                        </ul>
                    </div>
                </td>
                <td class="col-lg-3 col-lg-offset-2" style="font-family: &quot; lucida grande&quot; , &quot; lucida sans unicode&quot; , arial, helvetica, sans-serif; text-decoration: none; font-size: 13px; border: 0;">
                    <div class="col-xs-12" style="padding: 0;">
                        <ul class="list-unstyled">
                            <li>
                                <a class="customtitle" href="https://www.facebook.com/MicrosoftEAA" style="font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;">
                                    <img src="../Style%20Library/HEC/facebook.png" class="icons">
                                    /MicrosoftEAA
                                </a>
                            </li>
                            <li style="margin-top: 10px; font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif; /* font-size: 12px; */">
                                <a class="customtitle" href="https://twitter.com/HEC_Pakistan">
                                    <img src="../Style%20Library/HEC/twitter.png" class="icons">
                                    @HEC_Pakistan
                                </a>
                            </li>
                        </ul>
                    </div>
                </td>
            </tr>
        </tbody>
    </table>

    <table>
        <tbody class="" style="">
            <tr class="row">
                <td class="col-lg-12" style="padding: 0;">
                    <p style="text-align: center; color: white; font-size: 12px; width: 1000px;">
                        Copyrighted 2015 © Higher Education Commission, Pakistan, All right 		Reserved
                    </p>
                </td>
            </tr>


        </tbody>
    </table>
</div>



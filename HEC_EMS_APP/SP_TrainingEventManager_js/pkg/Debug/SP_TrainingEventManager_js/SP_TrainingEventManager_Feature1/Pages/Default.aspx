﻿<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ID="Content1" ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">


    <script type="text/javascript" src="../Scripts/jquery-1.9.1.js"></script>

    <link type="text/css" href="../Content/jNotify.jquery.css" rel="stylesheet" />
    <link type="text/css" href="../Styles/dt1.4/jquery.dataTables.css" rel="stylesheet" />
    <!-- Add your JavaScript to the following file -->
    <%--<script type="text/javascript" src="../Scripts/App.js"></script>--%>
    <script type="text/javascript" src="../Scripts/App.min.js"></script>

    <script type="text/javascript" src="../Scripts/jquery-1.9.1.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui1.10.2.js"></script>
    <script type="text/javascript" src="../Scripts/jquery-ui-timepicker.js"></script>
    <script type="text/javascript" src="../Scripts/date.js"></script>

    <script type="text/javascript" src="../Scripts/jNotify.jquery.js"></script>
    <script type="text/javascript" src="../Scripts/jNotify.jquery.min.js"></script>



    <script src="../codebase/dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>
    <script src="../codebase/ext/dhtmlxscheduler_collision.js" type="text/javascript" charset="utf-8"></script>
    <link rel="stylesheet" href="../codebase/dhtmlxscheduler.css" type="text/css" media="screen" title="no title" charset="utf-8" />
    <script src='../codebase/ext/dhtmlxscheduler_timeline.js' type="text/javascript" charset="utf-8"></script>
    <script src="../codebase/ext/dhtmlxscheduler_quick_info.js" type="text/javascript" charset="utf-8"></script>
    <script src="../codebase/ext/dhtmlxscheduler_treetimeline.js" type="text/javascript" charset="utf-8"></script>
    <script src="../codebase/ext/dhtmlxscheduler_outerdrag.js" type="text/javascript" charset="utf-8"></script>
    <script src="../codebase/ext/dhtmlxscheduler_readonly.js" type="text/javascript" charset="utf-8"></script>
    <script src='../codebase/ext/dhtmlxscheduler_tooltip.js' type="text/javascript" charset="utf-8"></script>

    
    
    <!--Exporting to PDF-->
    <script type="text/javascript" src="../ExportPdf/jspdf/libs/sprintf.js"></script>
<script type="text/javascript" src="../ExportPdf/jspdf/jspdf.js"></script>
<script type="text/javascript" src="../ExportPdf/jspdf/libs/base64.js"></script>
    <!--jquery Plugin -->
<script type="text/javascript" src="../ExportPdf/tableExport.js"></script>
<script type="text/javascript" src="../ExportPdf/jquery.base64.js"></script>
    <!--Exporting to PDF-->

    <link rel="stylesheet" type="text/css" href="../Content/jquery-ui-1.10.2.custom.css" />
    <link type="text/css" href="../Content/bootstrap.css" rel="stylesheet" />
    <link rel="Stylesheet" type="text/css" href="../Content/App.css" />

    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.system.js">
    </script>
    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.coreVector.js">
    </script>
    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.advanced.js">
    </script>
    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.gauge.js">
    </script>
    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.funnel.js">
    </script>
    <script type="text/javascript" src="../Scripts/localjavascript/jchartfx.motif.js">
    </script>
    <!-- Latest compiled and minified CSS -->
    <script type="text/javascript" src="../Scripts/bootstrap-tagsinput.min.js"></script>
    <link type="text/css" href="../Content/bootstrap-tagsinput.css" rel="stylesheet" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css" />
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <%--<link type="text/css" rel="stylesheet" href="../codebase/Scripts/bootstrap.min.css" />
    <!-- Optional theme -->
    <link type="text/css" rel="stylesheet" href="../codebase/Scripts/bootstrap-theme.min.css" />
    <!-- Latest compiled and minified JavaScript -->
    <script type="text/javascript" src="../codebase/Scripts/bootstrap.min.js"></script>
    <%--<script type="text/javascript" src="../Scripts/dt1.4/jquery.dataTables.js"></script>--%>
    <script type="text/javascript" src="../Scripts/dt1.4/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="../Scripts/jquery.dataTables.input.js"></script>
    <SharePoint:ScriptLink ID="ScriptLink1" Name="clienttemplates.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink2" Name="clientforms.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink3" Name="clientpeoplepicker.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink4" Name="autofill.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink5" Name="sp.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink6" Name="sp.runtime.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <SharePoint:ScriptLink ID="ScriptLink7" Name="sp.core.js" runat="server" LoadAfterUI="true" Localizable="false" />
    <style type="text/css">
        .table > thead > tr > th, .table > tbody > tr > th, .table > tfoot > tr > th, .table > thead > tr > td, .table > tbody > tr > td, .table > tfoot > tr > td {
            border-top: 0px;
        }

        .dhx_cal_data table tbody tr td:first-child {
            border-left: 1px solid #CECECE;
        }

        .dhx_cal_data table tbody tr td:last-child {
            border-right: 1px solid #CECECE;
        }


        .col-lg-1 {
            text-align: center;
        }

        .icon_delete {
            display: none !important;
        }

        .dhx_delete_btn_set {
            display: none !important;
        }

        .dhx_time {
            display: none !important;
        }

        .dhx_cal_event_line_start {
            color: white;
        }

        .hideColumn {
            display: none !important;
        }

        input[type=search] {
            width: 500px;
        }

        .checkboxAll {
            margin-left: -8px !important;
        }

        .shareevent {
            background-image: url(../images/Share.png);
            /*background-image: url(../Images/icon_addnew.png);*/
            background-repeat: no-repeat;
            padding-left: 30px;
            height: 25px;
            font-family: Arial;
            color: #000;
            vertical-align: middle;
            line-height: 25px;
            display: inline;
            float: left;
            top: 25px;
            position: relative;
            z-index: 1;
            cursor: pointer;
        }

        #blocking-wait-indicator {
            position: fixed;
            left: 0;
            top: 0;
            z-index: 2000;
        }

            #blocking-wait-indicator, #blocking-wait-indicator .wait-overlay, #blocking-wait-indicator .vertical-centering-helper {
                width: 100%;
                height: 100%;
            }

                #blocking-wait-indicator .vertical-centering-helper {
                    position: absolute;
                    top: 0;
                    left: 0;
                    z-index: 2001;
                }


        #blocking-wait-indicator {
            position: fixed;
            left: 0;
            top: 0;
            z-index: 2000;
        }

            #blocking-wait-indicator .wait-overlay {
                background: rgba(87, 87, 87, 0.6);
            }



            #blocking-wait-indicator, #blocking-wait-indicator .wait-overlay, #blocking-wait-indicator .vertical-centering-helper {
                width: 100%;
                height: 100%;
            }

                #blocking-wait-indicator .wait-overlay.white {
                    background: rgba(255, 255, 255, 0.6);
                }



                #blocking-wait-indicator .vertical-centering-helper {
                    position: absolute;
                    top: 0;
                    left: 0;
                    z-index: 2001;
                }

                #blocking-wait-indicator .wait-overlay.white .wait-spinner {
                    border-color: #ddd;
                }



                #blocking-wait-indicator .wait-overlay {
                    background: rgba(87, 87, 87, 0.6);
                }

                    #blocking-wait-indicator .wait-overlay.white .icon-spinner {
                        color: #999;
                    }

                    #blocking-wait-indicator .wait-overlay.white {
                        background: rgba(255, 255, 255, 0.6);
                    }

                        #blocking-wait-indicator .wait-overlay.white .wait-spinner {
                            border-color: #ddd;
                        }

                        #blocking-wait-indicator .wait-overlay.white .icon-spinner {
                            color: #999;
                        }

                #blocking-wait-indicator .wait-spinner {
                    width: 80px;
                    height: 80px;
                    background: #f5f5f5;
                    border: 3px solid #bbb;
                    margin: 0 auto;
                    border-radius: 10px;
                }

                    #blocking-wait-indicator .wait-spinner .icon-spinner {
                        font-size: 46px;
                        position: relative;
                        top: 50%;
                        left: 50%;
                        margin-left: -19px;
                        margin-top: -22px;
                    }

        span.wait {
            width: 68px;
            background-image: url('../images/wait.gif');
            display: block;
            margin: 2px;
            height: 70px;
        }




        #blocking-wait-indicator .wait-spinner {
            width: 80px;
            height: 80px;
            background: #f5f5f5;
            border: 3px solid #bbb;
            margin: 0 auto;
            border-radius: 10px;
        }

            #blocking-wait-indicator .wait-spinner .icon-spinner {
                font-size: 46px;
                position: relative;
                top: 50%;
                left: 50%;
                margin-left: -19px;
                margin-top: -22px;
            }

        span.wait {
            width: 68px;
            background-image: url('../images/wait.gif');
            display: block;
            margin: 2px;
            height: 70px;
        }

        #Mycontentdiv {
            position: relative;
        }


        .ribbon {
            position: absolute;
            /*top: -15px;*/
            right: -15px;
            height: 16px;
            width: 16px;
        }

        .my_ribbon {
        }
    </style>
    


    <script type="text/javascript">
        $(document).ready(function () {
            var query = window.location.search.substring(1);
            var parms = query.split('=');
            if (parms[0] == 'eventId') {
                var eventId = parms[1];
                scheduleEvents(eventId);
            }

            if (parms[0] == 'eventcalender') {
                showEventCalender();
            }

            scheduler.attachEvent("onLightbox", function (id) {
                var query = window.location.search.substring(1);
                var parms = query.split('=');
                if (parms[0] == 'eventId') {
                    ModifyNewEvent(id);
                }
                else if (parms[0] == 'eventcalender') {
                    $(".dhx_cal_quick_info").hide();
                    $('.dhx_cal_quick_info').dialog("close");
                    return false;
                }
                return true;
            });

            scheduler.attachEvent("onDblClick", function (id, e) {
                var query = window.location.search.substring(1);
                var parms = query.split('=');
                if (parms[0] == 'eventcalender') {
                    //$(".dhx_cal_light").hide();
                    $(".dhx_cal_quick_info").hide();
                    scheduler.config.isReadonly = true;
                    return false;
                }
                return true;
            });

            scheduler.attachEvent("onEmptyClick", function (date, e) {
                var query = window.location.search.substring(1);
                var parms = query.split('=');
                if (parms[0] == 'eventcalender') {
                    //$(".dhx_cal_light").hide();
                    //$(".dhx_cal_light_wide").hide();
                    $(".dhx_cal_quick_info").hide();
                    scheduler.config.isReadonly = true;
                    return false;
                }
                return true;
            });

            scheduler.attachEvent("onClick", function (id, e) {
                var query = window.location.search.substring(1);
                var parms = query.split('=');
                if (parms[0] == 'eventId') {
                    scheduler.getEvent(id).readonly = true;
                    return true;
                }
                else if (parms[0] == 'eventcalender') {
                    scheduler.config.isReadonly = true;
                    $(".dhx_cal_quick_info").hide();
                    //$('.dhx_cal_light').dialog("close");
                    return false;
                }
                return true;
            });

            scheduler.attachEvent("onBeforeDrag", function (id, move, e) {
                if (id != null) {
                    scheduler.getEvent(id).readonly = true;
                }
                return false;
            });


            $('.my_ribbon').click(function (e) {
                e.preventDefault();
                $(this).closest('div').hide();

            });

            //$(document).keyup(function(e) {
            //    if (e.keyCode == 27) {
            //        //$('.dialog').close();
            //        $('.dhx_cal_quick_info').hide();
            //        $('.dhx_cal_light').dialog("close");
            //    } // esc
            //});

    





        });


    </script>


</asp:Content>

<%--1526507037613349 xell pak public--%>
<%--1526508907613162- Test XELL EMS --%>


<%--398595456974340 stpxellpublic  HECEMS --%>
<%--1375884719393497 Pern PUBLIC--%>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ID="Content2" ContentPlaceHolderID="PlaceHolderMain" runat="server">
    <%-- facebook integration--%>
    <div>

        <div id="fb-root"></div>
        <script type="text/javascript">
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '398595456974340',
                    status: true,
                    xfbml: true,
                    version: 'v2.0'
                });

            }
            function shareOnfacebook() {
                FB.ui(
        {
            method: 'share',
            href: 'http://www.bbc.co.uk/urdu',
        },
        function (response) {
            if (response && !response.error_code) {
                alert('Posting completed.');
            } else {
                alert('Error while posting.');
            }
        }
        );
            }
            function ShareMyFeed(name, link, piclink, caption, descp, message) {


                FB.ui(
            {
                method: 'feed',
                name: name,
                link: link,
                picture: piclink,
                caption: caption,
                description: descp,
                message: message
            },
            function (response) {
                if (response && response.post_id) {
                    alert('Post was published.');
                } else {
                    alert('Post was not published.');
                }
            }
          );
            }
            (function (d) {
                var js, id = 'facebook-jssdk'; if (d.getElementById(id)) { return; }
                js = d.createElement('script'); js.id = id; js.async = true;
                js.src = "//connect.facebook.net/en_US/all.js";
                d.getElementsByTagName('head')[0].appendChild(js);
            }(document));
        </script>
    </div>


<div id="Home" style="display: none; width: 100%;">
           
    
    <table class="table top-header" style=" margin-bottom: 0;">
            <tr class="row">
                <td class="col-sm-8 col-lg-8">
                    <img src="../Images/logo-header.png" class="img-responsive" alt="HEC Logo" /><span class="HEC-logo" style="">HEC- Event Management System</span></td>
                <td class="col-sm-8 col-lg-8 top-header2_new mobView" style="height: 100px;">
                    <div  onclick="emsHelp();" style="float: right;padding-left: 75%;">
                        <img src="../Images/icon_user.png" class="helpImage" alt="Help" /><span>Help</span>
                    </div>
                    <div  class="top-header2_new" style="margin-top: 5px;">
                        <span>Welcome: </span>
                        <a href="javascript:void(0);" style="color:blue; font-weight:normal; " onclick="ModifyUserProfile('AdminEmail','AdminProfileView');">
                            <span style="text-decoration: underline;" id="spnUserName"></span>
                        </a>
                    </div>
                    <div class="top-header2_new">
                        <span id="spnUserEmail" style="position: relative;float: right; margin-left: 120px;margin-top: 5px;"></span>
                    </div>
                </td>
                </tr>
        </table>
    
    

        <%--<div class="top-header">
            <div>
                <img src="../Images/logo-header.png" class="img-responsive" alt="HEC Logo" /><span>HEC- Event Management System</span>
            </div>
            <div  class="top-header2_new" style="width: 15%; height: 100%;">
                <div  onclick="emsHelp();" style="float: right;padding-left: 75%;">
                    <img src="../Images/icon_user.png" class="helpImage" alt="Help" /><span>Help</span>
                </div>
                <div  class="top-header2_new">
                    <a href="javascript:void(0);" style="color:blue; font-weight:normal " onclick="ModifyUserProfile('AdminEmail','AdminView');"><span id="spnUserName"></span></a>
                </div>
                <div class="top-header2_new">
                    <span id="spnUserEmail"></span>
                    </div>
            </div>
        </div>--%>
        <nav class="navbar navbar-inversecustom bs-docs-nav" id="navbar" role="banner">
            <div class="container-fluid" id="container-div">
                <div class="navbar-header">
                </div>
                <div class="navbar-container" id="navbar-continer-div">
                    <ul class="nav navbar-nav " id ="ul-navbar">
                      <%--<li><a class="zz1_GlobalNav_3 addManageUsersButton" id="NavManageuser" title="Click to manage Users"   onclick="syncSiteAppusers();">Manage Users</a></li>--%>
                        <li><a class="zz1_GlobalNav_3 addManageUsersButton" id="NavManageuser" title="Click to manage Users"   onclick="DisplayAppUsers();">Manage Users</a></li>
                        <li><a class="zz1_GlobalNav_3 addRoleRequestsButton" id="NavRoleReq" title="Click to manage Roles request" onclick="ManageRequests();">Role Requests</a></li>
                        <li><a class="zz1_GlobalNav_3 addUniOrganizationButton" id="NavUni" title="Click to manage university/organization" onclick="showUniOrg();">University/Organizations</a></li>
                        <li><a class="zz1_GlobalNav_3 addSitesButton" id="NavSites" title="Click to manage Sites" onclick="showSites();">Sites</a></li>
                        <li><a class="zz1_GlobalNav_3 addRoomsButton" id="NavRooms" title="Click to manage Rooms" onclick="showTrainingAssets();">Rooms</a></li>
                        <li><a class="zz1_GlobalNav_3 addEventsButton" id="NavEvent" title="Click to manage Events" onclick="showEvents();">Events</a></li>
                        <li><a class="zz1_GlobalNav_3 addCalenderButton" title="Click to manage Calendar" onclick="showCalendar();">Calendar</a></li>
                        <li><a class="zz1_GlobalNav_3 addReportsButton" title="Click to manage Reports" onclick="ShowCharts();">Reports</a></li>
                        <li><a class="zz1_GlobalNav_3 addLogOutButton" title="Click to LogOut" onclick="emsLogOut();">Log Out</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="clear">&nbsp;</div>

        <div id="errGeneral" class="errorClass"></div>
    </div>

    <%--<!-- Users View -->
     <div id="AllUsers" style="display: none; float: left; width: 100%">
        <div id="errAllUsers" class="errorClass"></div>
        <div id="userList"></div>
        <div id="Mycontentdiv">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div id="manageUserHelptext" style="background-color:#fafad2;font-style: italic;">Admin user can manage setting for registered users. Below table show all the existing registered users and the new application waiting for the registration approval from the Admin for the HEC-EMS.  
Note: If a newly registered user is not part of the internal contact list of EMS, then while adding the user the application would reject automatically the new user because the external user are not allowed self registration into EMS.</div>
       
        </div>
        <div id="FetchUsers" class="addCustomButton" onclick="syncusers();"><span>Click to archive User Applications</span></div>
        <%-- id=<div id="FetchAppdata" class="addCustomButton" onclick="syncApplicationdata();"><span>Fetch Application data</span></div>--%
        <div id="UsersHeading" class="headingCustom hideIt">Registered Users</div>
        <div id="usersDiv"></div>
        <div id="Approveusers" class="btn btn-default " onclick="ApproveUser('Approve');"><span>Approve</span></div>
        <div id="syncusers" class="btn btn-default " onclick="ApproveUser('Sync');"><span>Sync</span></div>
    </div>

   <!-- App Users View -->
    <div id="AllAppUsers" style="display: none; float: left; width: 100%">
        <div id="errAllAppUsers" class="errorClass"></div>
        <div id="AppuserList"></div>
        <div class="addCustomButton_new"><span>Click on any row to check details</span></div>
        <div id="AppUsersHeading" class="headingCustom hideIt">App Users</div>
        <div id="AppusersDiv"></div>
        <div id="ApproveAppusers" class="btn btn-default " onclick="ApproveAppUser('Add');"><span>Add</span></div>
        <div id="syncAppusers" class="btn btn-default " onclick="ApproveAppUser('Reject');"><span>Reject</span></div>
    </div>--%>
    
    <%--<!-- App Users View -->
    <div id="AllSiteAppUsers" style="display: none; float: left; width: 100%">
        <div id="errAllSiteAppUsers" class="errorClass"></div>
        <div id="SiteAppuserList"></div>
        <div id="SiteAppuserContentdiv" style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div id="manageUserHelptext" style="background-color:#fafad2;font-style: italic;">Admin user can manage setting for registered users. Below table show all the existing registered users and the new application waiting for the registration approval from the Admin for the HEC-EMS.  
Note: If a newly registered user is not part of the internal contact list of EMS, then while adding the user the application would reject automatically the new user because the external user are not allowed self registration into EMS.</div>
       
        </div>
        <div id="ApproveSiteAppusers" class="btn btn-default CustomButtons " onclick="SiteAppUserRequest('Approve');"><span>Approve</span></div>
        <div id="CopyEmailSiteAppusers" class="btn btn-default CustomButtons" onclick="CopyEmail('SiteAppusersTable');"><span>Copy Email</span></div>
        <div id="ShareSiteAppusers" class="btn btn-default CustomButtons" onclick="Share();"><span>Share</span></div>
        <div id="AddeSiteAppusers" class="btn btn-default CustomButtons" onclick="SiteAppUserRequest('Add');"><span>Add</span></div>
        <div id="RejectAppusers" class="btn btn-default CustomButtons" onclick="SiteAppUserRequest('Reject');"><span>Reject</span></div>
        
        <div id="SiteAppUsersHeading" class="headingCustom hideIt">App Users</div>
        <div id="SiteAppusersDiv"></div>
        <div class="addCustomButton_new"><span>Click on any row to check details</span></div>
    </div>--%>

    <!-- App Users View -->
    <div id="AllSiteAppUsers" style="display: none; float: left; width: 100%">
        <div id="errAllSiteAppUsers" class="errorClass"></div>
        <div id="SiteAppuserList"></div>
        <div id="SiteAppuserContentdiv" style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div id="manageUserHelptext" style="background-color:#fafad2;font-style: italic;">Admin user can manage setting for registered users. Below table show all the existing registered users and the new application waiting for the registration approval from the Admin for the HEC-EMS.  
Note: If a newly registered user is not part of the internal contact list of EMS, then while adding the user the application would reject automatically the new user because the external user are not allowed self registration into EMS.</div>
       
        </div>
        
        <div id="SiteAppusers" class="btn btn-default fetchSiteUsersBtn" onclick="syncSiteAppusers();"><span>Fetch New User Applications</span></div>

        <div id="ApproveSiteAppusers" class="btn btn-default AppUserCustomButtons " onclick="SiteAppUserRequest('Approve');"><span>Approve</span></div>
        <div id="CopyEmailSiteAppusers" class="btn btn-default AppUserCustomButtons" onclick="CopyEmail('SiteAppusersTable');"><span>Copy Email</span></div>
        <div id="ShareSiteAppusers" class="btn btn-default AppUserCustomButtons" onclick="Share();"><span>Share</span></div>
        <div id="AddeSiteAppusers" class="btn btn-default AppUserCustomButtons" onclick="SiteAppUserRequest('Add');"><span>Add</span></div>
        <div id="RejectAppusers" class="btn btn-default AppUserCustomButtons" onclick="SiteAppUserRequest('Reject');"><span>Reject</span></div>
        
        <div id="SiteAppUsersHeading" class="headingCustom hideIt">App Users</div>
        <div id="SiteAppusersDiv"></div>
        <div class="addCustomButton_new"><span>Click on any row to check details</span></div>
    </div>
    
    <!-- App Users Profile -->
     <div id="ModifyUserProfile" class="verticalscroll"  title="Modify User Profile" style="display: none;">
                <fieldset class="scheduler-border">
  <legend class="scheduler-border">User Profile:</legend>
        <table class="table">
            <tr class="row">
                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth"> Email*</label>
                </td>
                <td >
                    <input type="text" class="form-control userprofilewidth" id="Email" disabled="disabled" />
                </td>
                <td class="col-lg-1">
                    <label class="control-label userprofileLabelwidth">Title*</label>
                </td>
                <td >
                    <select id="ddlPrefix" class="form-control userprofilewidth" >
                          <option value="Select">Select</option>
                          <option value="Mr">Mr</option>
                          <option value="Ms">Ms</option>
                          <option value="Mrs">Mrs</option>
                    </select>
                </td>
            </tr>
            <tr class="row">
                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">First Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control userprofilewidth" id="FirstName" placeholder="Enter First Name" />
                </td>
                <td class="col-lg-1">
                    <label class="control-label userprofileLabelwidth">Last Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control userprofilewidth" id="LastName" placeholder="Enter Last Name" />
                </td>
            </tr>
            <tr class="row">
                
            
                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">Address*</label>
                </td>
                <td>
                    <input type="text" class="form-control userprofilewidth" id="Address" placeholder="Enter Address"  />
                </td>
                
                <td class="col-lg-1">
                    <label class="control-label userprofileLabelwidth">Phone*</label>
                </td>
                <td>
                    <input type="text" class="form-control userprofilewidth" id="Phone" placeholder="Enter Mobile Phone Number" />
                </td>

            </tr>
            <tr class="row">
                

                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">Role*</label>
                </td>
                <td>
                    <select id="ddlRole" class="form-control userprofilewidth" onchange="OnRoleChange();" ></select>
                </td>
                <td class="col-lg-1">
                    <label class="control-label userprofileLabelwidth">Country*</label>
                </td>
                <td>
                    <select id="ddlCountry" class="form-control userprofilewidth" onchange="OnUserCountryChangeEdit();"></select>
                </td>
            </tr>
                        <tr class="row">
                
                            <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">City*</label>
                </td>
                <td>
                    <select id="ddlCity" class="form-control userprofilewidth"   ></select>
                </td>
                <td class="col-lg-1">
                    <label id="lblRegion" class="control-label userprofileLabelwidth">Region/Province*</label>
                    <label class="control-label userprofileLabelwidth " id="lblPassport">Passport Number/Traveling Doc. Number*</label>
                </td>
                <td>
                    <select id="ddlRegionProvince" class="form-control userprofilewidth" ></select>
                    <input type="text" id="passportNumber" class="form-control userprofilewidth " maxlength="13" size="13"  >
                </td>

            </tr>
                        <tr class="row">
                
                            
<td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth " id='lblCNIC'>CNIC*</label>
                    <%--<label class="control-label userprofileLabelwidth " id="lblPassport">Passport Number/Traveling Doc. Number*</label>--%>
                    </td>
                <td>
                   <%--<input type="number" class="form-control" id="CNIC" maxlength="13" />--%>
                    <input type="text" id="CNIC" class="form-control userprofilewidth" maxlength="13" size="13"  >
                    <%--<input type="text" id="passportNumber" class="form-control userprofilewidth " maxlength="13" size="13"  >--%>
                    
                </td>

                
            </tr>
            <tr class="row">
                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">Primary Affiliation*</label>
                </td>
                <td>
                    <select id="ddlPrimaryAffiliation" class="form-control userprofilewidth" ></select>
                </td>
                <td class="col-lg-1">
                    <label class="control-label userprofileLabelwidth">Affiliation*</label>
                </td>
                <td>
                    <select id="lstAffiliation" class="form-control userprofilewidth" multiple="multiple"></select>
                </td>
            </tr>

            <tr class="row">
                <td class="col-lg-2">
                    <label class="control-label userprofileLabelwidth">Discipline*</label>
                </td>
                <td>
                    <select id="EditUserUniversityDomain" class="form-control userprofilewidth" multiple="multiple"  onchange="OnUserUniversityChangeEdit();"></select>
                </td>

                <td class="col-lg-1"> 
                    <label class="control-label userprofileLabelwidth">Specialization*</label>
                </td>
                <td>
                    <select id="EditUserUniversitySubDomain" class="form-control userprofilewidth" multiple="multiple"></select>
                </td>
            </tr>
<%--            <tr>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveUserProfile();">Register</div>
                    <div class="btn btn-cancel" onclick="CancelUserProfile();">Cancel</div>

                </td>
            </tr>--%>
        </table>
             </fieldset>
        <fieldset class="scheduler-border" id="fsUserRoles">
  <legend class="scheduler-border">User Role:</legend>

              <table class="table">
<%--            <tr>
                <td>
                    <label class="control-label">User Email</label>
                </td>
                <td colspan="2">
                    <input type="text" class="form-control" id="userEmail" disabled />
                </td>
                <td>
                    <input type="text" class="form-control" id="userRoleId" value="0" style="display: none;" />
                </td>
            </tr>--%>
                  <tr>
                      <div id="AddNewUserRole" style="position: inherit;" class="addCustomButton" onclick="addNewRole();"><span>Click here to Register New Role</span></div>
                  </tr>
            <tr>
                <td>
                    <label class="control-label userroles" id="lblSuperAdmin">Super Admin</label>
                </td>
                <td>
                    <input type="checkbox" onclick="IsSuperAdmin();" id="chksuperadmin" />
                </td>
                <td>
                    <label id='lbladmin' class="control-label hideIt">Admin</label>
                    <input type="text" class="form-control hideIt" id="userRoleId" value="0" style="display: none;" />
                    <input type="text" class="form-control hideIt " disabled id="request" />
                </td>
                <td>
                    <input type="checkbox" id="chkadmin" class="hideIt" />
                </td>


                <td colspan="1">
                    <label class="control-label userroles">Event Organizer</label>
                </td>
                <td colspan="2">
                    <input type="checkbox" id="chkeventOrganizer" />
                    <input type="text" class="form-control " disabled id="EventOrgStatus" />
                   <%-- <img id="imgEventOrganizer" src="" style="height:20px;width:20px" />--%>
                </td>
                <td>
                    <%--<label class="control-label">Event Organizer Status</label>--%>
                    <img id="imgEventOrganizer" src="" style="height:20px;width:20px" />
                </td>
            
                <td>
                    <label class="control-label userroles">Site Representative</label>
                </td>
                <td>
                    <input type="checkbox" id="chkrep" />
                     <%--<img id="imgSiteRep" src="" style="height:20px;width:20px" />--%>
                    <input type="text" class="form-control " id="repStatus" disabled />
                </td>
                <td>
                    <%--<label class="control-label" >Representative Status</label>--%>
                    <img id="imgSiteRep" src="" style="height:20px;width:20px" />
                </td>
                <td colspan="2"></td>
                
            </tr>
            <tr>
                <td></td>
                <%--<td>
                    <div class="btn btn-save" onclick="saveUserRoles();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelAddUserRoles();">Cancel</div>
                </td>--%>
            </tr>
        </table>
         </fieldset>
              <div>
                    <div class="btn btn-save" onclick="saveUserProfile();">Save</div>
                    <div class="btn btn-cancel" onclick="CancelUserProfile();">Cancel</div>

                </div>
    </div>
    


    <!-- Add User Roles -->

<%--   <div id="AddUserRoles" title="Add User Roles" style="display: none;">
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">User Email</label>
                </td>
                <td colspan="2">
                    <input type="text" class="form-control" id="userEmail" disabled />
                </td>
                <td>
                    <input type="text" class="form-control" id="userRoleId" value="0" style="display: none;" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label ">Super Admin</label>
                </td>
                <td>
                    <input type="checkbox" onclick="IsSuperAdmin();" id="superadmin" />
                </td>
            </tr>

            <tr>
                <td>
                    <label class="control-label">Admin</label>
                </td>
                <td>
                    <input type="checkbox" id="admin" />
                </td>
            </tr>
            <tr>

                <td colspan="1">
                    <label class="control-label">Event Organizer</label>
                </td>
                <td colspan="2">
                    <input type="checkbox" id="eventOrganizer" />
                   <%-- <input type="text" class="form-control" disabled id="EventOrgStatus" />--%
                    <img id="imgEventOrganizer" src="" style="height:20px;width:20px" />
                </td>
                <td>
                    <%--<label class="control-label">Event Organizer Status</label>--%
                    
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Representative</label>
                </td>
                <td>
                    <input type="checkbox" id="rep" />
                     <img id="imgSiteRep" src="" style="height:20px;width:20px" />
                  <%--  <input type="text" class="form-control" id="repStatus" disabled />--%
                </td>
                <td>
                    <%--<label class="control-label" >Representative Status</label>--%
                    
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveUserRoles();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelAddUserRoles();">Cancel</div>
                </td>
            </tr>
        </table>
    </div>--%>

    <!-- UniOrg View -->
    <div id="AllUniOrg" style="display: none; float: left; width: 100%">
        <div id="errAllUniOrg" class="errorClass"></div>
        <div id="myUniOrgDiv" style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			 Admin user can view new and existing university/organization. Below table displays the list of universities/organizations with the respective details.
			Note: The filter will apply to view 10 to 100 University/organization on a single page.
        </div>
		</div>
        <div id="uniorgList"></div>
        <div id="AddNewUniOrg" class="addCustomButton" onclick="addUniOrg('Admin');"><span>Click here to Register New University/Organization</span></div>
        <div id="UniOrgHeading" class="headingCustom hideIt">University/Organization List </div>
        <div id="uniOrgDiv">
        </div>
    </div>

    <!-- Add New Uni/Org -->


    <div id="AddUniOrg" class="verticalscroll" title="Register University Organization" style="display: none; max-height: 600px; max-width: 550px">
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">University/Organization Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="addOrgName" placeholder="Enter Uni/Org name" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Discipline*</label>
                </td>
                <td>
                    <select id="newUniversityDomain" class="form-control" multiple="multiple" onchange="OnUniversityChange();"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Specializations*</label>
                </td>
                <td>
                    <select id="newUniversitysubDomain" class="form-control" multiple="multiple"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Organization Type*</label>
                </td>
                <td>
                    <select id="newUniversityType" class="form-control"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label ">Website</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="addAddress" placeholder="Enter Address" />
                </td>
            </tr>

            <tr>
                <td>
                    <label class="control-label">UAN/Phone</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="addPhone" placeholder="Enter UAN/Phone" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Description</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="addDescription" placeholder="Enter Description" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Representative</label>
                </td>
                <td>
                    <div id="peoplePickerDiv2"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveNewUniOrg();">Register</div>
                    <div class="btn btn-cancel" onclick="cancelNewUniOrg();">Cancel</div>

                </td>
            </tr>
        </table>
    </div>



    <div id="EditUniOrg" class="verticalscroll" title="Edit University Organization Detail" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">Univeristy/Organization Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editOrgName" placeholder="Edit Uni/Org name" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Discipline*</label>
                </td>
                <td>
                    <select id="editUniversityDomain" class="form-control" multiple="multiple" onchange="OnUniversityChangeEdit();"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Specializations*</label>
                </td>
                <td>
                    <select id="editUniversitysubDomain" class="form-control" multiple="multiple"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Organization Type*</label>
                </td>
                <td>
                    <select id="editUniversityType" class="form-control"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label ">Website</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editAddress" placeholder="Edit Address" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">UAN/Phone</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editPhone" placeholder="Edit UAN/Phone" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Description</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editDescription" placeholder="Edit Description" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Representative</label>
                </td>
                <td>
                    <div id="addNewRepresentative" class="addCustom" onclick="addNewRepresentative();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>New Representative Person</div>

                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div id="showRepresentatives"></div>

                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <div class="btn btn-save" onclick="saveEditUniOrg();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelEditUniOrg();">Cancel</div>

                    <div class="btn btn-delete" onclick="deleteEditUniOrg();">Delete</div>
                </td>
            </tr>
        </table>
    </div>

    <!-- Add New Representatives in Edit Uni/Org Form -->
    <div id="editRepresentatives"  title="Add New Representative" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>

                <td>Representative
                </td>
                <td>
                    <div id="editPeoplePicker2"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveEditRepresentative();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelRepresentative();">Cancel</div>


                </td>
            </tr>
        </table>

    </div>



    <!-- Sites View -->
    <div id="AllSites"  style="display: none; float: left; width: 100%">
        <div id="errAllSites" class="errorClass"></div>
         <div id="mySitesDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			 Admin user can view new and existing sites (location) in the HEC-EMS. He is also able to approve or reject the site. Below table shows the list of new and existing sites (location) with their respective details. 
			Note: The filter will apply to view 10 to 100 University/organization on a single page.
        </div>
		</div>
        <div id="PSites"></div>
        <div id="addNewSite" class="addCustomButton" onclick="addNewSite('Admin');"><span>Click here to Add Site</span></div>
        <div id="SiteHeading" class="headingCustom hideIt">Site List</div>
        <div id="pSitesDiv"></div>
    </div>
    <!-- Add New Site -->
    <div id="AddSite" class="verticalscroll" title="Add New Site" style="display: none; max-height:450px; min-width: 450px; max-width: 500px">
        <div>
            <table class="table noBottomMargin">
                <tr>
                    <td width="126">
                        <label class="control-label">Organization Name*</label>
                    </td>
                    <td>
                        <select id="orgnames" class="form-control pull-left"></select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div id="assignSite" class="addCustom" onclick="assignSite()"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>Create Site</div>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
        <div id="site" style="display: none;">
            <table class="table">
                <tr>
                    <td width="126">
                        <label class="control-label">Site Name*</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" id="newSiteName" placeholder="Enter Site name" maxlength="50" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Discipline*</label>
                    </td>
                    <td>
                        <select id="newSiteUniversityDomain" class="form-control" multiple="multiple" onchange="OnSiteUniversityChange();"></select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Specializations*</label>
                    </td>
                    <td>
                        <select id="newSiteUniversitysubDomain" class="form-control" multiple="multiple"></select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Site Address*</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" id="newSiteAddress" placeholder="Enter Site address" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">UAN/Phone</label>
                    </td>
                    <td>
                        <input type="text" class="form-control" id="newSitePhone" placeholder="Enter UAN/Phone" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Site Capacity</label>
                    </td>
                    <td>
                        <input type="number" class="form-control" id="newSiteCapacity" placeholder="Enter site capacity (numbers only)" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Site Facilities</label>
                    </td>
                    <td>
                         <div class="multiselect">
                        <label>
                            &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities1" value="1" />&nbsp;Internet</label>
                        <label>
                            &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities2" value="2" />&nbsp;Video Conf</label>
                        <label>
                            &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities3" value="3" />&nbsp;Lab Facilities</label>
                        <label>
                            &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="4" value="4" />&nbsp;Meeting Room</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities5" value="5" />&nbsp;Audio/Mic</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities6" value="6" />&nbsp;LCD Display</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities7" value="7" />&nbsp;Projector</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities8" value="8" />&nbsp;Parking</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities9" value="9" />&nbsp;Accommodation Facility</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities10" value="10" />&nbsp;AC/Heating</label>
                        <label>
                            &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities11" value="11" />&nbsp;Refreshments</label>
                        <label>
                           &nbsp;<input type="checkbox" name="facilities[]" style="margin-top:-2px" id="facilities12" value="12" />&nbsp;Catering</label>
                    </div>
                    
                    </td>
                </tr>
                <tr>
                    <td>
                        <label class="control-label">Site Representative</label>
                    </td>
                    <td>
                        <div id="peoplePickerDiv3"></div>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <div class="btn btn-save" onclick="saveNewSite();">Save</div>
                        <div class="btn btn-cancel" onclick="cancelNewSite();">Cancel</div>

                    </td>

                </tr>
            </table>
        </div>
    </div>

    <!-- Edit Site -->

    <div id="EditSite" class="verticalscroll" title="Edit Site Detail" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">Organization Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editorgname" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Site Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editSiteName" placeholder="Edit Site name" maxlength="50" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Discipline*</label>
                </td>
                <td>
                    <select id="editSiteUniversityDomain" class="form-control" multiple="multiple" onchange="OnSiteUniversityChangeEdit();"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Specializations*</label>
                </td>
                <td>
                    <select id="editSiteUniversitysubDomain" class="form-control" multiple="multiple"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Site Address*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editSiteAddress" placeholder="Edit Site address" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">UAN/Phone</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editSitePhone" placeholder="Edit UAN/Phone" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Site Capacity</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editSiteCapacity" placeholder="Edit site capacity" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Site Facilities</label>
                </td>
                <td>
                    <div class="multiselect">
                         <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities1" value="1" />&nbsp;Internet</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities2" value="2" />&nbsp;Video Conf</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities3" value="3" />&nbsp;Lab Facilities</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities4" value="4" />&nbsp;Meeting Room</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities5" value="5" />&nbsp;Audio/Mic</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities6" value="6" />&nbsp;LCD Display</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities7" value="7" />&nbsp;Projector</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities8" value="8" />&nbsp;Parking</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities9" value="9" />&nbsp;Accommodation Facility</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities10" value="10" />&nbsp;AC/Heating</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities11" value="11" />&nbsp;Refreshments</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editfacilities12" value="12" />&nbsp;Catering</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Site Representative</label>
                </td>
                <td>
                    <div id="addNewSiteRepresentative" class="addCustom" onclick="addNewSiteRepresentative();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>New Site Representative</div>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label"></label>
                </td>
                <td>
                    <div id="showSiteRepresentatives"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveEditSite();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelEditSite();">Cancel</div>

                    <div class="btn btn-delete" onclick="deleteEditSite();">Delete</div>

                </td>
            </tr>
        </table>

    </div>


    <!-- Add New Site Representatives in Edit Uni/Org Form -->

    <div id="editSiteRepresentatives" title="Add New Site Representative" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>
                <td>
                    <div class="control-label">Site Representative</div>
                </td>
                <td>
                    <div id="editPeoplePicker3"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveEditSiteRepresentative();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelSiteRepresentative();">Cancel</div>


                </td>
            </tr>
        </table>
    </div>





    <!-- Assets View -->
    <div id="AllAssets" style="display: none; float: left; width: 100%">
        <div id="errAllAssets" class="errorClass"></div>
        <div id="myAssetsDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			Admin user can view new and existing rooms in the HEC-EMS with respect to a particular university/organization. Below table shows the list of all the rooms available with their capacity.
			Note: The filter will apply to view 10 to 100 University/organization on a single page.
        </div>
		</div>
		
        <div id="AssetList" style="display: none;"></div>
        <div id="assetList"></div>
        <div id="AddNewRoom" class="addCustomButton" onclick="addAssets('Admin');"><span>Click here to Add Room</span></div>
        <div id="AssetsHeading" class="headingCustom hideIt">Available Rooms</div>
        <div id="assetsDiv"></div>

    </div>

    <!-- Add New Asset -->

    <div id="AddAsset" class="verticalscroll" title="Add New Room" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>
                    <td width="126">
                        <label class="control-label">Organization Name*</label>
                    </td>
                    <td>
                        <select id="AssetOrgnames" class="form-control pull-left" onchange="onOrganizationChange('AssetOrgnames','sitenames');"></select>
                    </td>
                </tr>
            <tr>
                <td>
                    <div class="control-label">Site Name*</div>
                </td>
                <td>
                    <select id="sitenames" class="form-control" style="max-width: 308px"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Room Name*</div>
                </td>
                <td>
                    <input type="text" id="addRoom" class="form-control" placeholder="Add Rooms" />
                </td>
            </tr>
            <%--<tr>
                <td>
                    <div class="control-label">Room has Projector?</div>
                </td>
                <td>
                    <input type="text" id="addProjectors" class="form-control" placeholder="Add Projectors" />
                </td>
            </tr>--%>
            <tr>
                <td>
                    <div class="control-label">Max Attendee Capacity</div>
                </td>
                <td>
                    <input type="number" id="addStudentPC" class="form-control" placeholder="Add Attendee Capacity" />
                </td>
            </tr>
            <%-- <tr>
                <td>
                    <div class="control-label">Number of Speakers*</div>
                </td>
                <td>
                    <input type="text" id="addInstructorPC" class="form-control" placeholder="Add Speakers" />
                </td>
            </tr>--%>
            <tr>
                <td>
                    <label class="control-label">Room Charges</label>
                </td>
                <td>
                    <input type="number" class="form-control" id="addRoomCharge" placeholder="Add Room Charges (numbers only)" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Charge Per Person</label>
                </td>
                <td>
                    <input type="number" class="form-control" id="addChargePerPerson" placeholder="Add Charge Per Person" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Room Facilities</label>
                </td>
                <td>
                    <div class="multiselect">
                        <label>
                            &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px" id="rfacilities1" value="1" />&nbsp;Internet</label>
                        <label>
                           &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px" id="rfacilities2" value="2" />&nbsp;Video Conf</label>
                        <label>
                           &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px"  id="rfacilities3" value="3" />&nbsp;Audio/Mic</label>
                        <label>
                            &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px" id="rfacilities4" value="4" />&nbsp;LCD Display</label>
                        <label>
                            &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px" id="rfacilities5" value="5" />&nbsp;Projector</label>
                        <label>
                            &nbsp;<input type="checkbox" name="rfacilities[]" style="margin-top:-2px" id="rfacilities6" value="6" />&nbsp;AC/Heating</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>

                    <div class="btn btn-save" onclick="saveNewAssets();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelNewAssets();">Cancel</div>

                </td>
            </tr>
        </table>
    </div>

    <!-- Edit Asset -->

    <div id="EditAsset" class="verticalscroll" title="Edit Room" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
                        <tr>
                    <td width="126">
                        <label class="control-label">Organization Name*</label>
                    </td>
                    <td>
                        <select id="editAssetOrgnames" class="form-control pull-left" disabled="disabled"></select>
                    </td>
                </tr>
            <tr>
                <td>
                    <label class="control-label">Site Name</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editAssetsitename" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Room Name*</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editRoom" placeholder="Edit Room Name" />
                </td>

            </tr>
            <%--<tr>
                <td>
                    <label class="control-label">Room has Projector?</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editProjectors" placeholder=" Edit Projectors" />
                </td>

            </tr>--%>
            <tr>
                <td>
                    <label class="control-label">Max Attendee Capacity</label>
                </td>
                <td>
                    <input type="number" class="form-control" id="editStudentPC" placeholder=" Edit Attendee Capacity (numbers only)" />
                </td>

            </tr>
            <%--<tr>
                <td>
                    <label class="control-label">Number of Speakers</label>
                </td>
                <td>
                    <input type="text" class="form-control" id="editInstructorPC" placeholder=" Edit Speakers" />
                </td>

            </tr>--%>
            <tr>
                <td>
                    <label class="control-label">Room Charges</label>
                </td>
                <td>
                    <input type="number" class="form-control" id="editRoomCharge" placeholder=" Edit Room Charges (numbers only)" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Charge Per Person</label>
                </td>
                <td>
                    <input type="number" class="form-control" id="editChargePerPerson" placeholder=" Edit charge per person (numbers only)" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Room Facilities</label>
                </td>
                <td>
                     <div class="multiselect">
                         <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editrfacilities1" value="1" />&nbsp;Internet</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editrfacilities2" value="2" />&nbsp;Video Conf</label>
                        <label>
                           &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px"  id="editrfacilities3" value="3" />&nbsp;Audio/Mic</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editrfacilities4" value="4" />&nbsp;LCD Display</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editrfacilities5" value="5" />&nbsp;Projector</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editfacilities[]" style="margin-top:-2px" id="editrfacilities6" value="6" />&nbsp;AC/Heating</label>
                    </div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveEditAssets();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelEditAssets();">Cancel</div>

                </td>

            </tr>

        </table>

    </div>



    <!-- Events View -->
    <div id="AllEvents" style="display: none; float: left; width: 100%">
        <div id="errAllEvents" class="errorClass"></div>
        		<div id="myEventsDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			Admin user will be able to manage, edit and view all the events happening in the HEC-EMS. Below table shows the entire details of existing events occurring in the system. 
        </div>
		</div>

        <div id="EventList"></div>
        <div id="AddNewEvent" class="addCustomButton" onclick="addNewEvent('Admin');"><span>Click here to Create New Event</span></div>
           <%--<div class="btn btn-default CustomButtons" style="margin-left:5px;" onclick="showOverdueEvents();" id="btnOverDueEvents">overdue Events</div>--%>
        <select id="btnOverDueEvents" class="form-control CustomButtons" style="width: 15% !important;left: 50px;" onchange="btnOverDueEventsChange();" >
            <option value="0">Active Events</option>
            <option value="1">Overdue Events</option>
        </select>

        <div id="EventsHeading" class="headingCustom hideIt"> Events</div>
        <div id="EventDiv"></div>
    </div>

    <!-- Add New Event -->
    <div id="AddEventDetails" title="Add New Event" style="display: none;">
        <table class="table">
            <tr>
                <td width="150">

                    <div class="control-label">Event Name*</div>
                </td>
                <td>

                    <input type="text" id="newEvent" class="form-control setwidth" placeholder="Enter Event Name" />

                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Description</div>
                </td>
                <td>
                    <textarea id="newEventDescription" class="form-control setwidth" rows="3" cols="1" placeholder="Enter Event Description"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                     <div class="control-label">Image</div>  
                </td>
                <td>
                   <input id="eventImageFile"  class="form-control setwidth"  type="file" placeholder="select event image banner"/>
                </td>
            </tr>
            <tr>
                <td>
                     <div class="control-label"></div>  
                </td>
                <td>
                    <div class="btn btn-default" onclick="uploadImagestoStyleLib();" id="btnImageUpload">Upload</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Resource Person</div>
                </td>
                <td>
                    <label class="radio-inline">
                        <input type="radio" name="EventResPersonOptions" id="newlocalperson" value="Local" checked="checked" />
                        Local
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="EventResPersonOptions" id="newforeignPerson" value="Foreign" />
                        Foreign
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Type</div>
                </td>
                <td>
                    <select id="newEventType" class="form-control setwidth"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Discipline*</label>
                </td>
                <td>
                    <select id="newEventUniversityDomain" class="form-control setwidth" onchange="onEventDomainChange();"></select>
                    <input type="text" id="NewDisciplineSitesCount" class="form-control hideIt" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Specializations*</label>
                </td>
                <td>
                    <select id="newEventUniversitysubDomain" class="form-control setwidth" multiple="multiple"></select>
                </td>
            </tr>
            <%-- <tr>
                <td>
                    <div class="control-label">Descipline</div>
                </td>
                <td>
                    <select id="newEventDescipline" class="form-control"></select>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <div class="control-label">Start Date</div>
                </td>
                <td>
                    <input type="text" id="newStartDate" class="form-control setwidth" placeholder="Enter Start Date" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">End Date</div>
                </td>
                <td>
                    <input type="text" id="newEndDate" class="form-control setwidth" placeholder="Enter End Date" />
                </td>
            </tr>
            <tr>
                <td>
                    <%--
                         <div>
                        <label onclick="OpenEvent();">
                            <input type="radio" name="EventType" id="eventTypeOpened" value="1" checked="checked" />Open/Virtual</label>
                        <label onclick="TappedEvent();">
                            <input type="radio" name="EventType" id="eventTypeCapped" value="2" />Capped</label>

                    </div>
                    --%>

                </td>

                <td>
                    <label class="radio-inline" onclick="OpenEvent();" >
                        <input type="radio" name="EventType" id="eventTypeOpened" value="1" checked="checked"  />Open/Virtual</label>
                    <label class="radio-inline" onclick="TappedEvent();">
                        <input type="radio" name="EventType" id="eventTypeCapped" value="2" />Capped</label>

                    <div id="expectedAttendies" style="display: none">
                        <input type="text" id="txtExpectedAttendies" class="form-control" placeholder="Expected # of Attendees " />
                    </div>
                </td>

            </tr>
            <tr>
                <td>
                    <label class="control-label">Required Facilities for Event</label>
                </td>
                <td>
                    <div class="multiselect" >
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities1" value="1" />&nbsp;Internet</label>
                        <label>
                           &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities2" value="2" />&nbsp;Video Conf</label>
                        <label>
                           &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities3" value="3" />&nbsp;Lab Facilities</label>
                        <label>
                           &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities4" value="4" />&nbsp;Meeting Room</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities5" value="5" />&nbsp;Audio/Mic</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities6" value="6" />&nbsp;LCD Display</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities7" value="7" />&nbsp;Projector</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities8" value="8" />&nbsp;Parking</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities9" value="9" />&nbsp;Accommodation Facility</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities10" value="10" />&nbsp;AC/Heating</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities11" value="11" />&nbsp;Refreshments</label>
                        <label>
                            &nbsp;<input type="checkbox" name="efacilities[]" style="margin-top:-2px" id="efacilities12" value="12" />&nbsp;Catering</label>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div id="assignResource" class="addCustom" onclick="assignResource();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>Select Event Venue</div>
                </td>
                <td></td>
            </tr>
        </table>
        <table class="table" id="resource" style="display: none;">
            
            <tr>
                    <td width="126">
                        <label class="control-label">Organization Name*</label>
                    </td>
                    <td>
                        <select id="EventOrgnames" class="form-control pull-left" style="max-width: 308px;" onchange="onOrganizationChange('EventOrgnames','location');"></select>
                    </td>
                </tr>
            <tr>
              <td width="150">
                    <div class="control-label">Event Location</div>
                </td>
                <td>
                    <div id="createEventLocationSingle" style="display: block;">
                        <select id="location" class="form-control" style="max-width: 308px;" multiple="multiple"></select>
                    </div>
                    <div id="createEventLocationMultiple" style="display: none; width: 100px;">
                        <select multiple="multiple" id="locationnew" class="form-control" style="max-width: 308px;" ></select>
                    </div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="control-label">Attendees</div>
                </td>
                <td>
                    <div id="peoplePickerDiv"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveNewEvent();" id="saveButton">Save</div>
                    <div class="btn btn-cancel" onclick="cancelNewEvent();" id="cancelButton">Cancel</div>
                </td>
            </tr>
        </table>
    </div>

    <!-- Edit Event -->

    <div id="editEventDetails" title="Edit Event" style="display: none;">
        <table class="table">
            <tr>
                <td></td>
                <td>
                    <div class="fb-share-button control-label" data-href="https://pern.sharepoint.com/HECEMS" data-layout="button"></div>
                </td>
            </tr>
            <tr>
                <td width="150">
                    <input type="text" id="editEventid" class="form-control" disabled="disabled" style="display: none;" />
                    <input type="text" id="IsRecurring" class="form-control" disabled="disabled" style="display: none;" />
                </td>
                <td>
                    <div id="assignEditResource" class="addCustom" onclick="assignEditResource();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>Edit Event</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Name</div>
                </td>
                <td>
                    <input type="text" id="editEvent" class="form-control setwidth" disabled="disabled" />
                </td>

            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Description</div>
                </td>
                <td>
                    <textarea id="editEventDescription" class="form-control setwidth" rows="3" cols="1" placeholder="Enter Event Description" disabled="disabled"></textarea>
                </td>
            </tr>
               <tr>
                <td>
                     <div class="control-label">Image</div>  
                </td>
                <td>
                   <input id="editeventImageFile"  class="form-control setwidth"  type="file" placeholder="select event image banner" disabled="disabled"/>
                </td>
            </tr>
            <tr>
                <td>
                     <div class="control-label"></div>  
                </td>
                <td>
                    <div class="btn btn-default" onclick="uploadImagestoStyleLibEdit();" id="editbtnImageUpload" disabled="disabled">Upload</div>
                </td>
            </tr>

            <tr>
                <td>
                    <div class="control-label">Event Resource Person</div>
                </td>
                <td>
                    <label class="radio-inline">
                        <input type="radio" name="EdiEventResPersonOptions[]" id="editlocalperson" value="Local" checked="checked" disabled="disabled" />
                        Local
                    </label>
                    <label class="radio-inline">
                        <input type="radio" name="EdiEventResPersonOptions[]" id="editforeignPerson" value="Foreign" disabled="disabled" />
                        Foreign
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Type</div>
                </td>
                <td>
                    <select id="editEventType" class="form-control setwidth" disabled="disabled"></select>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Discipline*</label>
                </td>
                <td>
                    <select id="editEventUniversityDomain" class="form-control setwidth" onchange="onEventDomainChangeEdit();"></select>
                    <input type="text" id="DisciplineSitesCount" class="form-control hideIt" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Specializations*</label>
                </td>
                <td>
                    <select id="editEventUniversitysubDomain" class="form-control setwidth" multiple="multiple"></select>
                </td>
            </tr>
            <%-- <tr>
                <td>
                    <div class="control-label">Discipline</div>
                </td>
                <td>
                    <select id="editEventDescipline" class="form-control" disabled="disabled" ></select>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <div class="control-label">Start Date</div>
                </td>
                <td>
                    <input type="text" id="editStartDate" class="form-control" disabled="disabled" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">End Date</div>
                </td>
                <td>
                    <input type="text" id="editEndDate" class="form-control" disabled="disabled" />
                </td>
            </tr>

            <tr>
                <td></td>

                <td>
                    <label onclick="EditOpenEvent();" class="frmInLabel">
                        <input type="radio" name="EditEventType" id="editeventTypeOpened" value="1" checked="checked" disabled="disabled" />Open/Virtual</label>
                    <label onclick="EditTappedEvent();" class="frmInLabel">
                        <input type="radio" name="EditEventType" id="editeventTypeCapped" value="2" disabled="disabled" />Capped</label>


                    <div id="editexpectedAttendies" style="display: none; clear: both;">
                        <input type="text" id="edittxtExpectedAttendies" class="form-control" placeholder="Expected # of Attendees " />
                    </div>
                </td>

            </tr>


            <tr>
                <td>
                    <label class="control-label">Required Facilities for Event</label>
                </td>
                <td>
                    <div class="multiselect">
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]"  style="margin-top:-2px" id="editefacilities1" value="1" disabled="disabled" />&nbsp;Internet</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities2" value="2" disabled="disabled" />&nbsp;Video Conf</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities3" value="3" disabled="disabled" />&nbsp;Lab Facilities</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities4" value="4" disabled="disabled" />&nbsp;Meeting Room</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities5" value="5" disabled="disabled" />&nbsp;Audio/Mic</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities6" value="6" disabled="disabled" />&nbsp;LCD Display</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities7" value="7" disabled="disabled" />&nbsp;Projector</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities8" value="8" disabled="disabled" />&nbsp;Parking</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities9" value="9" disabled="disabled" />&nbsp;Accommodation Facility</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities10" value="10" disabled="disabled" />&nbsp;AC/Heating</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities11" value="11" disabled="disabled" />&nbsp;Refreshments</label>
                        <label>
                            &nbsp;<input type="checkbox" name="editefacilities[]" style="margin-top:-2px" id="editefacilities12" value="12" disabled="disabled" />&nbsp;Catering</label>
                    </div>
                </td>
            </tr>
            <tr>
                    <td width="126">
                        <label class="control-label">Organization Name*</label>
                    </td>
                    <td>
                        <select id="editEventOrgnames" class="form-control pull-left" onchange="onOrganizationChange('editEventOrgnames','editResources');"></select>
                    </td>
                </tr>
            <tr>
                <td>
                    <div class="control-label">Event Location</div>
                </td>
                <td>
                    <input id="editLocation" class="form-control" style="display: none;max-width: 308px;" disabled="disabled" />
                    <select id="editResources" class="form-control" style="display: none; max-width: 308px;"></select>
                </td>
            </tr>
            <%--<tr>
                <td></td>
                <td>
                    <select id="editResources" class="form-control" style="display: none; max-width: 308px;"></select>
                </td>
            </tr>--%>
            <tr>
                <td>
                    <div class="control-label"></div>
                </td>
                <td>
                    <div id="addNewAttendee" class="addCustom" onclick="addNewAttendees();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>New Attendees</div>
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Attendees</div>
                </td>
                <td>
                    <div id="showAttendees"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>

                    <div class="btn btn-save" onclick="saveEditEvent();" style="display: none;" id="saveEditEvent">Save</div>
                    <div class="btn btn-cancel" onclick="cancelEditEvent();">Cancel</div>
                    <div class="btn btn-delete" onclick="deleteEditEvent();">Delete</div>
                </td>
            </tr>
        </table>
    </div>

    <!-- Add New Attendees in Edit event Form -->

    <div id="editAttendees" title="Add New Attendee" style="display: none; max-height: 600px; max-width: 500px">
        <table class="table">
            <tr>
                <td>
                    <div class="control-label">Attendee Name</div>
                </td>
                <td>
                    <div id="editPeoplePicker"></div>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="saveEditAttendee();">Save</div>
                    <div class="btn btn-cancel" onclick="cancelAttendee();">Cancel</div>

                </td>
            </tr>
        </table>

    </div>


    <div id="editReservedAssets" title="Edit Resources" style="display: none; max-height: 600px; max-width: 500px">
        <div class="control-label">Location</div>

        <div class="btn btn-primary" onclick="fillOtherData();" id="editFillData">Fill Data</div>
        <div class="clear">&nbsp;</div>
    </div>


    <!-- Employee View-->
    <div id="EmployeeHome" style="display: none; float: left; width: 100%;">

      <%--<div class="top-header">
            <div>
                <img src="../Images/logo-header.png" class="img-responsive" alt="HEC Logo" /><span>HEC- Event Management System</span>
            </div>
            <div  class="top-header2_new" style="width: 15%; height: 100%;">
                <div onclick="emsHelp();" style="float: right;padding-left: 75%;">
                    <img src="../Images/icon_user.png" class="helpApp" alt="Help" /><span>Help</span>
                </div>
                <div  class="top-header2_new" onclick="ModifyUserProfile('','EmpView');">
                 <a href="javascript:void(0);" style="color:blue; font-weight:normal "><u><span id="spnAtt_UserName"></span></u></a>
                </div>
                <div class="top-header2_new">
                 <span id="spnAtt_UserEmail"></span>
                 </div>
            </div>
        </div>--%>
        
        <table class="table top-header" style=" margin-bottom: 0;">
            <tr class="row">
                <td class="col-sm-8 col-lg-8">
                    <img src="../Images/logo-header.png" class="img-responsive" alt="HEC Logo" /><span class="HEC-logo" style="">HEC- Event Management System</span></td>
                <td class="col-sm-8 col-lg-8 top-header2_new mobView" style="height: 100px;">
                    <div  onclick="emsHelp();" style="float: right;padding-left: 75%;">
                        <img src="../Images/icon_user.png" class="helpImage" alt="Help" /><span>Help</span>
                    </div>
                    <div  class="top-header2_new" style="margin-top: 5px;">
                        <span>Welcome: </span>
                        <a href="javascript:void(0);" style="color:blue; font-weight:normal; "  onclick="ModifyUserProfile('','EmpView');">
                            <span style="text-decoration: underline;" id="spnAtt_UserName"></span>
                        </a>
                    </div>
                    <div class="top-header2_new">
                        <span id="spnAtt_UserEmail" style="position: relative;float: right; margin-left: 120px;margin-top: 5px;"></span>
                    </div>
                </td>
                </tr>
        </table>
        

       <%-- <table class="table top-header" style=" margin-bottom: 0;">
            <tr class="row">
                <td class="col-sm-8 col-lg-8">
                    <img src="../Images/logo-header.png" class="img-responsive" alt="HEC Logo" /><span class="HEC-logo" style="">HEC- Event Management System</span></td>
                <td class="col-sm-8 col-lg-8 top-header2_new mobView" style="height: 100px;">
                    <div  onclick="emsHelp();" style="float: right;padding-left: 75%;">
                        <img src="../Images/icon_user.png" class="helpImage" alt="Help" /><span>Help</span>
                    </div>
                    <div  class="top-header2_new" style="margin-top: 5px;">
                        <span>Welcome: </span>
                        <a href="javascript:void(0);" style="color:blue; font-weight:normal; " onclick="ModifyUserProfile('','EmpView');">
                            <span style="text-decoration: underline;" id="spnAtt_UserName"></span>
                        </a>
                    </div>
                    <div class="top-header2_new">
                        <span id="spnAtt_UserEmail" style="position: relative;float: right; margin-left: 120px;margin-top: 5px;"></span>
                    </div>
                </td>
                </tr>
        </table>--%>

        <nav class="navbar navbar-inversecustom bs-docs-nav" role="banner">
            <div class="container-fluid">
                <div class="navbar-header">
                </div>
                <div>
                    <ul class="nav navbar-nav ">

                        <li><a class="zz1_GlobalNav_3 attendeeManageSiteUsers addManageUsersButton" id="NavManageSiteuser" title="Click to manage Users"   onclick="ManageSiteUsers();">Manage  Users</a></li>
                        <li><a class="zz1_GlobalNav_3 attedeUniOrgCreate addUniOrganizationButton" title="Click to manage Univerrsity/Organization" id="NavEmpUni" onclick="showUniOrgAttendee();">Create University/Organization</a></li>                        
                        <li><a class="zz1_GlobalNav_3 attedeSitesCreate addSitesButton" id="NavEmpSites" title="Click to manage Sites" onclick="showSitesAttendee();">Create Sites</a></li>                        
                        <li><a class="zz1_GlobalNav_3 attedeRoomsCreate addRoomsButton" id="NavEmpRooms" title="Click to manage Rooms" onclick="showTrainingAssetsAttendee();">Create Rooms</a></li>
                        <li><a class="zz1_GlobalNav_3 attedeSiteEvent addSitesButton" id="NavEmpSiteEvents" title="Click to manage Site Events" onclick="showSiteEventsForAttendeeView();">Site Events </a></li>
                        <li><a class="zz1_GlobalNav_3 attedeEventsCreate addEventsButton" id="NavEmpEvents" title="Click to create Events" onclick="showEventsForAttendeeView();">Create Event</a></li>
                        <li><a class="zz1_GlobalNav_3 addCalenderButton" title="Click to manage Calendar" onclick="showEventCalender();">Calendar</a></li>
                        <li><a class="zz1_GlobalNav_3  addAvailableEventsButton" title="Click to view Available Events" onclick="showAllEvents();">Available Events</a></li>
                        <li><a class="zz1_GlobalNav_3 addMyEventsButton " title="Click to view your Events" onclick="showEnrllEvents();">My Events</a></li>                        
                        <li><a class="zz1_GlobalNav_3 addFeedbackButton" title="Click to view Feebacks" onclick="showEventFeedback();">Feedback</a></li>
                         <%--<li><a class="zz1_GlobalNav_3 addRoleRequestsButton" title="Click to manage Roles Requests" onclick="showRoleRequest();">Role Request</a></li>--%>
                        <li><a class="zz1_GlobalNav_3 addLogOutButton" title="Click to LogOut" onclick="emsLogOut();">Log Out</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>


        <div class="errorClass" id="errEvents">
        </div>
    </div>


    <!-- Enrolled Events View -->
    <div id="AllEnrllEvents" style="display: none; float: left; width: 100%;">
        <div id="errEmpEvents" class="errorClass"></div>
        <div id="myEventsDiv_new"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			<%--You can change your personal details such as phone number, address, languages etc.--%>
                 Below is a list of all Events you are enrolled or are placed in wait list for
        </div>
            <br/>
		</div>
        <div id="EnrllEventList"></div>
        <div id="EnrllHeading" class="headingCustom hideIt">Enrolled Events</div>
        <div id="AllEnrlEvenDiv"></div>
    </div>

    <div id="OtherEvents" style="display: none; float: left; width: 100%;">
        <div id="AllEventsList"></div>
        <div id="myAvailableEventsDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			HEC-EMS is a user-friendly system. You can enroll in the events available in the below table with respect to discipline and event their availability. You can simply click any event for enrolling. 
        </div>
            <br/>
		</div>
        <div id="otherHeading" class="headingCustom hideIt">All Events</div>
        <div id="allEventsDiv"></div>
    </div>

    <div id="AllRoleRequest" style="display: none; float: left; width: 100%;">
        <div id="errRoleRequests" class="errorClass"></div>
        <div id="myCurrentRoleRequestDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			Admin user can view and manage the role requests applied by the attendee users in the HEC-EMS.  Admin user has three options for assigning the role to the users, i.e. “Event Representative, Organizer or Speaker” 
			Note: Students are not applicable for role request.
        </div>
            <br/>
		</div>

        <div id="RoleRequestList"></div>
        <div id="AddNewRole" class="addCustomButton" onclick="addNewRole();"><span>Click here to Register New Role</span></div>
        <div id="RoleHeading" class="headingCustom hideIt">You Current Role Request</div>
        <div id="roleRequestDiv"></div>
    </div>


    <div id="AllEventsList2"></div>
    <div id="AllEventTableDiv" style="display: none">
        <div id="allEventsDiv2"></div>
    </div>

    <div id="WaitingEvents" style="display: none; float: left; width: 100%;">
        <div id="WaitEventList"></div>
        <div id="WaitHeading" class="headingCustom hideIt">Waitlisted for Events</div>
        <div id="waitEventsDiv"></div>
    </div>


    <!-- Event Details View -->
    <div id="eventDetails" title="Event Details" style="float: left; display: none; padding: 10px;">
        <table class="table">
            <tr>
                <td>
                    <div class="control-label">Event Name</div>
                </td>
                <td>
                    <input type="text" id="eventName"  class="form-control" style="width: 300px; color: black;" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            
            <tr>
                <td>
                    <div class="control-label">Location</div>
                </td>
                <td>
                    <input type="text" id="eventLocation"  class="form-control" style="width: 300px; color: black;" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Start Date</div>
                </td>
                <td>
                    <input type="text" id="eventStartDate"  class="form-control" readonly="readonly" style="width: 300px; color: black;" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">End Date</div>
                </td>
                <td>
                    <input type="text" id="eventEndDate"  class="form-control" readonly="readonly" style="width: 300px; color: black;" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Description</div>
                </td>
                <td>
                    <textarea id="myeventDescription" class="form-control " rows="3" cols="1" disabled="disabled" unselectable="on"></textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-cancel" onclick="cancelEvent();">Close</div>
                    <div class="btn btn-delete" onclick="deleteEnrollEvent();" id="deleteEnroll" style="display: none">Delete</div>
                </td>
            </tr>
        </table>
    </div>

    <!-- Enrolled Event Details-->
    <div id="enrollEventDetails" title="Event Details" style="float: left; display: none;">
        <table class="table">
            <tr>
                <td>
                    <div class="control-label">Event Name</div>
                </td>
                <td>
                    <input type="text" id="enrollEventName"  class="form-control" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Location</div>
                </td>
                <td>
                    <input type="text" class="form-control" id="enrollEventLocation" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>

                    <div class="control-label">Start Date</div>
                </td>
                <td>
                    <input type="text" class="form-control" id="enrollStartDate" style="width: 300px; color: black;" readonly="readonly" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">End Date</div>
                </td>
                <td>
                    <input type="text" class="form-control" id="enrollEndDate" style="width: 300px; color: black;" readonly="readonly" disabled="disabled" unselectable="on" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="control-label">Event Description</div>
                </td>
                <td>
                    <textarea id="enrollEventDescription" class="form-control" rows="3" cols="1" readonly="readonly" disabled="disabled" unselectable="on"></textarea>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>


                    <div class="btn btn-save" onclick="enrollEvent();">Enroll</div>
                    <div class="btn btn-cancel" onclick="cancelEnrollEvent();">Close</div>

                </td>
            </tr>
        </table>
    </div>
    <!-- Role Registration View -->
    <div id="roleDetails" title="Role Registration" style="float: left; display: none;">

        <table class="table">
            <tr>
                <td>
                    <div class="control-label">I want to Register as:</div>
                </td>
                <td>
                    <select id="roles">
                        <option value="Event Organizer">Event Organizer</option>
                        <option value="Site Representative">Site Representative</option>
                       
                    </select>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="submitRequest();">Register</div>
                    <div class="btn btn-cancel" onclick="cancelRole();">Close</div>

                </td>
            </tr>
        </table>
    </div>
    <div id="EventsFeedback" style="display: none; float: left; width: 100%;">
        <div id="myEventsFeedbackDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			At HEC-EMS we are very interested in your assessment for a particular event therefore users can share their feedback and rate a particular event. Your feedback will be used for planning future events.
        </div>
            <br/>
		</div>
        <div id="EventsFeedbackHeading" class="headingCustom hideIt">Events You Attended</div>
        <div id="eventsFeedBackDiv"></div>
    </div>


    <div id="eventFeedbackDiv" style="display: none; max-height: 600px;">
        <%--  <div>
                <table class="table">     
                    <tr>
             <td style="align-content:center;align-self:center">
                            <div>Event Name: </div>
                        </td>
                        <td>
                            <div id="feedbackEventTilte" > </div>
                        </td>
                    </tr>
                </table>
           </div>--%>
        <input type="text" id="feedbackEventid" class="form-control" disabled="disabled" style="display: none;" />
        <table class="table ">
            <caption>
                What is your level of satisfaction with the following statements? </caption>
            <thead>
                <tr>
                    <th></th>
                    <td>Below Average</td>
                    <td>Average</td>
                    <td>Good</td>
                    <td>Excellent</td>
                </tr>
            </thead>
            <tr>
                <th>Speakers Communication Skills </th>
                <td>
                    <input type="radio" name="optionsRadios1" id="CommuoptionsRadios1" value="Below Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios1" id="CommuoptionsRadios2" value="Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios1" id="CommuoptionsRadios3" value="Good" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios1" id="CommuoptionsRadios4" value="Excellent" class="center-aligned" /></td>
            </tr>
            <tr>
                <th>Speaker's Command on Topic </th>
                <td>
                    <input type="radio" name="optionsRadios2" id="TopicoptionsRadios1" value="Below Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios2" id="TopicoptionsRadios2" value="Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios2" id="TopicoptionsRadios3" value="Good"  class="center-aligned"/></td>
                <td>
                    <input type="radio" name="optionsRadios2" id="TopicoptionsRadios4" value="Excellent" class="center-aligned" /></td>
            </tr>
            <tr>
                <th>Quality of Material used by Speaker</th>
                <td>
                    <input type="radio" name="optionsRadios3" id="MaterialoptionsRadios1" value="Below Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios3" id="MaterialoptionsRadios2" value="Average"  class="center-aligned"/></td>
                <td>
                    <input type="radio" name="optionsRadios3" id="MaterialoptionsRadios3" value="Good" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios3" id="MaterialoptionsRadios4" value="Excellent"  class="center-aligned"/></td>
            </tr>
            <tr>
                <th>Site Environment</th>
                <td>
                    <input type="radio" name="optionsRadios4" id="EnviroptionsRadios1" value="Below Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios4" id="EnviroptionsRadios2" value="Average"  class="center-aligned"/></td>
                <td>
                    <input type="radio" name="optionsRadios4" id="EnviroptionsRadios3" value="Good" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios4" id="EnviroptionsRadios4" value="Excellent" class="center-aligned" /></td>
            </tr>
            <tr>
                <th>Participation level of all attendees </th>
                <td>
                    <input type="radio" name="optionsRadios5" id="PartioptionsRadios1" value="Below Average" class="center-aligned" /></td>
                <td>
                    <input type="radio" name="optionsRadios5" id="PartioptionsRadios2" value="Average"  class="center-aligned"/></td>
                <td>
                    <input type="radio" name="optionsRadios5" id="PartioptionsRadios3" value="Good"  class="center-aligned"/></td>
                <td>
                    <input type="radio" name="optionsRadios5" id="PartioptionsRadios4" value="Excellent" class="center-aligned" /></td>
            </tr>
            <tr>
                <th>Feedback Comments</th>
                <td colspan="4">

                    <textarea id="FeedbackComments" class="form-control" style="width: 100%" rows="3" cols="1" placeholder="Enter Feedback Comments"></textarea>
                </td>
            </tr>
            <tr>
                <th></th>
                <td></td>
                <td></td>
                <td></td>
                <td>
                    <div id="btnsave" class="btn btn-save" onclick="saveFeedback();">Submit</div>
                    <div class="btn btn-cancel" onclick="CancelFeedback();">Cancel</div>


                </td>
            </tr>
        </table>

    </div>
    
    <div id="eventFeedbackDetails" class="verticalscroll" title="Event Feedback Details" style="display: none; max-height: 600px;">
      <input class="form-control"  type="text" id="FeedbackEventName" style="display: none;"  />
        <table class="table" id="EventFeedbackTable">
            <thead>
                <tr>
                    <th></th>
                    <th>Below Average</th>
                    <th>Average</th>
                    <th>Good</th>
                    <th>Excellent</th>
                </tr>
            </thead>
            <tr>
                <td>Speakers Communication Skills </td>
               <td >
                   <div id="spComSkillBA" class="center-aligned"> </div> 
                 </td>
                <td >
                <div  id="spComSkillA" class="center-aligned"> </div> 
				</td>
                <td > 
                  <div  id="spComSkillG" class="center-aligned"> </div> 
				 </td>
                <td >
                <div  id="spComSkillE" class="center-aligned"> </div> 
				</td>
            </tr>
            <tr>
                <td>Speaker's Command on Topic </td>
                <td >
                   <div  id="spComonTopicBA" class="center-aligned"> </div> 
                 </td>
                <td >
                <div  id="spComonTopicA" class="center-aligned"> </div> 
				</td>
                <td >
                  <div  id="spComonTopicG" class="center-aligned"> </div> 
				 </td>
                <td >
                <div  id="spComonTopicE" class="center-aligned"> </div> 
				</td>
            </tr>
            <tr>
                <td>Quality of Material used by Speaker</td>
                  <td >
                   <div  id="spMatQualityBA" class="center-aligned"> </div> 
                 </td>
                <td >
                <div  id="spMatQualityA" class="center-aligned"> </div> 
				</td>
                <td >
                  <div  id="spMatQualityG" class="center-aligned"> </div> 
				 </td>
                <td >
                <div  id="spMatQualityE" class="center-aligned"> </div> 
				</td>
            </tr>
            <tr>
                <td>Site Environment</td>
                   <td >
                   <div  id="siteEnvBA" class="center-aligned"> </div> 
                 </td>
                <td >
                <div  id="siteEnvA" class="center-aligned"> </div> 
				</td>
                <td >
                  <div  id="siteEnvG" class="center-aligned"> </div> 
				 </td>
                <td >
                <div  id="siteEnvE" class="center-aligned"> </div> 
				</td>
            </tr>
            <tr>
                <td>Participation level of all attendees </td>
                  <td >
                   <div  id="PlevelBA" class="center-aligned"> </div> 
                 </td>
                <td >
                <div  id="PlevelA" class="center-aligned"> </div> 
				</td>
                <td >
                  <div  id="PlevelG" class="center-aligned"> </div> 
				 </td>
                <td >
                <div  id="PlevelE" class="center-aligned"> </div> 
				</td>
            </tr>
        </table>
       Comments:
        <div id="eventsFeedbackComments">

        </div>
        <div class="btn btn-delete" onclick="ExportEventFeedback();">Export Feedback</div>

       
    </div>


    <div id="chartsDiv" style="display: none">
        <div>
            <table>
                <tr>
                      <div id="myReportsDiv"style="position:relative">
                        <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
                         <div style="background-color:#fafad2;font-style: italic;">
			            Admin user can view all the reports related to the events in the HEC-EMS. Reports can be discriminated with respect to event type.
                    </div>
                          <br/>
		            </div>
                    
                </tr>
                <tr>
                    <td>Event Type:

                    </td>
                    <td>
                        <select id="barcharEventType" class="form-control" onchange="ShowEventChart();"></select>
                    </td>
                </tr>
            </table>
        </div>
        <div class="jchartfx_body">
            <div class="jchartfx_container">
                <div id="myDash" style="width: 100%; height: 100%; display: inline-block; position: relative">
                    <div id="divEventTypeBasedChart" style="width: 700px; height: 500px; display: inline-block"></div>
                    <div id="divAlleventspisChart" style="width: 700px; height: 500px; display: inline-block;"></div>
                    <div id="divChart1" style="width: 980px; height: 580px; display: inline-block"></div>
                </div>
            </div>
        </div>
    </div>

    
    <div id="calenderLoader" style="display: none">
        
        
        
        <div id="CalenderEventsHeading" class="pCustomTitle pHeadingCustom">Events Calendar</div>
        <%--<div id="AddCalenderNewEvent" class="addCustom !important" onclick="addNewEvent();"><span class="glyphicon glyphicon-plus-sign" aria-hidden="true"></span>New Event</div>--%>
<br/>
        <div id="myCalenderDiv"style="position:relative">
            
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			The Calendar below shows all the events happening in the HEC-EMS. By placing your cursor on the any event, you will be able to see the high level details of that particular event.
        </div>
            
		</div>
            <div  style="padding: 28px 0px">
                <div >
                    <div class="btn btn-cancel inline" style="margin-right:0px" onclick="SearchCalendar();">Search</div>
                    <%--<input class="form-control inline"  type="text" id="srchSite" placeholder="search by Site"  />--%>
                    <%--<input class="form-control inline"  type="text" id="srchDiscipline" placeholder="search by Discipline"  />--%>
                    
                    <select id="drpdwnDisciplinelst" class="form-control inline" style="min-width: 20%;" ></select>
                    <%--<label class="control-label inline">search by Discipline</label>--%>
                    <select id="drpdwnSitelst" class="form-control inline" style="min-width: 20%;"></select>
                    <%--<label class="control-label inline">search by Site</label>--%>
                  </div>
                               
            </div>
            

        <div id="calenderLoaderView" class="dhx_cal_container" style='width: 100%; height: 100%; overflow: visible;'>
            <div class="dhx_cal_navline">
                <div class="dhx_cal_prev_button">&nbsp;</div>
                <div class="dhx_cal_next_button">&nbsp;</div>
                <div class="dhx_cal_today_button"></div>
                <div class="dhx_cal_date"></div>
                <div class="dhx_cal_tab" name="day_tab" style="right: 204px;"></div>
                <div class="dhx_cal_tab" name="week_tab" style="right: 140px;"></div>
                <%--<div class="dhx_cal_tab" id="timeline_tab" name="timeline_tab" style="display: none"></div>--%>
                <div class="dhx_cal_tab" id="month_tab" name="month_tab" style="right: 76px;"></div>
            </div>
            <div class="dhx_cal_header" style="overflow: visible; height: 100%; border-left: 0px solid #CECECE;left:0px!important;">
            </div>
            <div class="dhx_cal_data " style="overflow: visible; height: 100%; ">
            </div>
        </div>
    </div>


    <!-- -->
    <div id="EventCapped" style="display: none; width: 100%;">
        <div id="Cappeddiv1" class="headingCustom hideIt"></div>
        <table class="table1">
            <tr>
                <td colspan="4">
                    <label class="control-label">Expected Attendees</label>
                </td>
                <td>
                    <label class="control-label"></label>
                </td>
                <td colspan="4">
                    <label class="control-label">Reserved Space</label>
                </td>
            </tr>
            <%--<td>
                      <input class="form-control" type="text" id="txtEmailSubject" placeholder="Enter Email Subject"  />
                </td>--%>
            <tr>
                <td colspan="4">
                    <input class="form-control" type="text" id="txtExpectedAttendees" disabled="disabled" />
                </td>
                <td>
                    <label class="control-label"></label>
                    <label class="headingCustom "><==></label>
                </td>
                <td colspan="4">
                    <input class="form-control" type="text" id="txtReservedSpace" disabled="disabled" />
                </td>
            </tr>

        </table>
    </div>

    <!-- SchEvents View -->
    <div id="AllSchEvent" style="display: none; width: 100%;">
        <div id="errAllSchEvent" class="control-label "></div>
        <div id="AllSchEventlist"></div>

        <div id="SchEventHeading1" class="headingCustom hideIt">Reserved Rooms</div>
        <div id="AllSchEventDiv"></div>
    </div>


    <div id="scheduler_here" class="dhx_cal_container" style='width: 100%; height: 100%; overflow: visible; display: none; margin-bottom: 500px;'>

        <div id="schdiv" class="control-label "></div>
        <div class="dhx_cal_navline">
            <div class="dhx_cal_prev_button">&nbsp;</div>
            <div class="dhx_cal_next_button">&nbsp;</div>
            <div class="dhx_cal_today_button"></div>
            <div class="dhx_cal_date"></div>
            <!-- <div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div> -->
            <!-- <div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div> -->
            <div class="dhx_cal_tab" id="timeline_tab" name="timeline_tab" style="display: none"></div>
            <!-- <div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div> -->
        </div>
        <div class="dhx_cal_header" style="overflow: visible; height: 100%; border-left: 1px solid #CECECE">
        </div>
        <div class="dhx_cal_data " style="overflow: visible; height: 100%; width: 100%;">
        </div>
    </div>
    
    <div id="AllEventsForAttendeeview" style="display: none; float: left; width: 100%">
        <div id="errAllEventsAttendee" class="errorClass"></div>
        <div id="EventListAttendee"></div>
        <div id="AddNewEventAttendee" class="addCustomButton" onclick="addNewEvent('EventOrg');"><span>Click here to Create New Event</span></div>
        <div id="EventsHeadingAttendee" class="headingCustom hideIt">Events</div>
        <div id="EventDivAttendee"></div>
    </div>
    
    <div id="AllSiteEventsForAttendeeview" style="display: none; float: left; width: 100%">
        <div id="errAllSiteEventsAttendee" class="errorClass"></div>
        <div id="SiteEventListAttendee"></div>
        <%--<div id="AddNewEventAttendee" class="addCustomButton" onclick="addNewEvent();"><span>Click here to Create New Event</span></div>--%>
        <div id="SiteEventsHeadingAttendee" class="headingCustom hideIt">Site Events</div>
        <div id="SiteEventDivAttendee"></div>
    </div>

    <%--	<div id="AllEventsForAttendeeview" style="display: none; float: left; width: 100%">
        <div id="errAllEventsAttendee" class="errorClass"></div>
        <div id="EventListAttendee"></div>
        <div id="AddNewEventAttendee" class="addCustomButton" onclick="addNewEvent();"><span>New Event</span></div>
        <div id="EventsHeadingAttendee" class="headingCustom hideIt">Events</div>
        <div id="EventDivAttendee"></div>
    </div>--%>
    <div id="AllUniOrgForAttendeeview" style="display: none; float: left; width: 100%">
        <div id="errAllUniOrgForAttendeeview" class="errorClass"></div>
        <div id="uniorgListForAttendeeview"></div>
        <div id="AddNewUniOrgForAttendeeview" class="addCustomButton" onclick="addUniOrg('SiteRep');"><span>Click here to Register New University/Organization</span></div>
        <div id="UniOrgHeadingForAttendeeview" class="headingCustom hideIt">University/Organization List </div>
        <div id="uniOrgDivForAttendeeview">
        </div>

    </div>
    <div id="AllSitesAttendee" style="display: none; float: left; width: 100%">
        <div id="errAllSitesAttendee" class="errorClass"></div>
        <div id="PSitesAttendee"></div>
        <div id="addNewSiteAttendee" class="addCustomButton" onclick="addNewSite('SiteRep');"><span>Click here to Add new Site</span></div>
        <div id="SiteHeadingAttendee" class="headingCustom hideIt">Site List</div>
        <div id="pSitesDivAttendee"></div>
    </div>
    <div id="AllAssetsAttendee" style="display: none; float: left; width: 100%">
        <div id="errAllAssetsAttendee" class="errorClass"></div>
        <div id="AssetListAttendee" style="display: none;"></div>
        <%--        <div id="assetListAttendee"></div>--%>
        <div id="assetListAttendee"></div>
        <div id="AddNewRoomAttendee" class="addCustomButton" onclick="addAssets('SiteRep');"><span>Click here to add new Room</span></div>
        <div id="AssetsHeadingAttendee" class="headingCustom hideIt">Registered Rooms</div>
        <div id="assetsDivAttendee"></div>

    </div>



    <!-- Event Organizer View -->
    <div id="AllEventOrg">
        <div id="errEventOrg" class="errorClass"></div>
        <div id="myRoleRequestDiv"style="position:relative">
            <a href="javascript:void(0);" class="my_ribbon"><img src="../Images/Close-icon.png" class="ribbon"/></a>
             <div style="background-color:#fafad2;font-style: italic;">
			 Admin user can view and manage the role requests applied by the attendee users in the HEC-EMS.  Admin user has three options for assigning the role to the users, i.e. “Event Representative, Organizer or Speaker” 
			Note: Students are not applicable for role request.
        </div>
            <br/>
		</div>
        <div id="AllEventOrglist"></div>
        <div id="EventOrgHeading1" class="headingCustom hideIt">Events Organizers</div>
        <div id="AllEventOrgDiv"></div>
    </div>

    <!-- Representative View -->
    <div id="AllRep" style="display: none; width: 100%;">
        <div id="errAllRep" class="errorClass"></div>
        <div id="AllReplist"></div>

        <div id="RepHeading1" class="headingCustom hideIt">Representatives </div>
        <div id="AllRepDiv"></div>
    </div>

    <div id="sendemailarea" title="Send Email" style="display: none;">
        <label class="control-label">Email will be sent to all users affiliated/Interested in below event, you can add additional recipients below.</label>
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">Subject*</label>
                </td>
                <td>
                    <input class="form-control" type="text" id="txtEmailSubject" placeholder="Enter Email Subject" />
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Message*</label>
                </td>
                <td>
                    <textarea id="txtEmailBody" class="form-control" rows="3" cols="1" placeholder="Enter Email Message"></textarea>
                </td>
            </tr>
            <tr>
                <td>
                    <label class="control-label">Add Recipient*</label>
                </td>
                <td>
                    <input id="txtEmailRecipient" data-role="tagsinput" class="form-control" rows="3" cols="1" placeholder="Enter one or more recipient email" />
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <div class="btn btn-save" onclick="sendEmail();">Send</div>
                    <div class="btn btn-cancel" onclick="CancelSendEmaildialog();">Cancel</div>


                </td>
            </tr>
            <%-- <tr>
                <td>
                    Email Status:
                </td>
                <td>
                    <div id="emailingStatus">
                        
                    </div>
                </td>
            </tr>--%>
        </table>
    </div>
    
    <div id="htmlBannerarea" title="HTML Banner" style="display: none;">
        
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">HTML Banner</label>
                </td>
                <td colspan="8">
                    <textarea id="txthtmlBanner" class="form-control"  style="width: 600px;  height:150px" rows="3" cols="8" placeholder="HTML Banner Area"></textarea>
                </td>
            </tr>
            
        </table>
    </div>

    <div id="fbshareArea" title="Facebook Sharing" style="display: none;">
        <table class="table">
            <tr>
                <td>
                    <label class="control-label">Paste Link*</label>
                </td>
                <td>
                    <input class="form-control" type="text" id="txtfbsharelink" placeholder="Enter Email Subject" />
                </td>
            </tr>
            <tr>
                <td>
                    <div class="btn btn-save" onclick="SetFBShareLink();">Add Url</div>
                </td>
                <td>
                    <div class="fb-share-button control-label" id="aattendeefbShare" data-href="" data-layout="button"></div>
                </td>
            </tr>
            <%-- <tr>
                <td>
                    Email Status:
                </td>
                <td>
                    <div id="emailingStatus">
                        
                    </div>
                </td>
            </tr>--%>
        </table>
    </div>

    <div id="billCharges"  title="Event Charges" style="display: none; overflow-y: scroll !important;height: inherit">
        <div>
            <img src="../Images/Bill-Header.png"  alt="Approve" height="200" width="650" title="Approve this Uni/Org"/>
        </div>
        <table class="table" id="tblbillCharges">
            <thead>
                <tr>
                    <th class="lblBold">
                        <input class="form-control" type="text" id="EventId" style="display: none" />
                        <input class="form-control" type="text" id="prntEventName" style="display: none" />
                        <input class="form-control" type="text" id="prntEventDate" style="display: none" />
                        <input class="form-control" type="text" id="prntEventCreatedBy" style="display: none" />
                        Rooms
                    </th>

                    <th class="lblBold">Room Charges</th>
                    <th class="lblBold">Charges Per Person</th>
                </tr>
            </thead>
            <tbody id="billChargesBody">
            </tbody>
            <tfoot>
                <tr>
                    <td>Sum of Room Charges</td>
                    <td>
                        <input class="form-control" type="text" id="TotalRoomsCharges" placeholder="0" disabled="disabled" /></td>
                </tr>
                <tr>
                    <td>Final Charges</td>
                    <td>
                        <input class="form-control" type="text" id="FinalRoomsCharges" placeholder="Final Event Charges" /></td>
                </tr>
                <tr>
                    <td>Description</td>
                    <td colspan="4">
                        <textarea id="FinalChargeDescription" class="form-control" style="width: 100%" rows="3" cols="1" placeholder="Final Charge Description"></textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    
                    <td colspan="4">
                        <div class="btn btn-save" onclick="SaveEventCharges();">Save</div>
                        <div class="btn btn-cancel" onclick="CanceleEventCharges();">Cancel</div>
                        <div class="btn btn-delete" onclick="PrintEventCharges();">Print Bill</div>
                        <div class="btn btn-delete" onclick="ExportBill();">Export Bill</div>
                    </td>
                </tr>
            </tfoot>
        </table>
        <img src="../Images/Footer Image.png"  alt="Approve" height="200" width="650" title="Approve this Uni/Org"/>
    </div>

        <div id="PrintbillCharges" title="Event Charges"  style="display:none;">
        <table class="table" id="PrinttblbillCharges">
            <thead>
                <tr>
                    <th class="lblBold">
                        Rooms
                    </th>

                    <th class="lblBold">Room Charges</th>
                    <th class="lblBold">Charges Per Person</th>
                </tr>
            </thead>
            
            <tbody id="PrintbillChargesBody">
            </tbody>
            
        </table>
    </div>

    <div id="eventReOccurance" title="Event Recurrence"  style="display: none">
        <table class="table">
            <tr>
                <td>Select Recurrence Frequency Below*
                </td>

            </tr>
            <tr>
                <td>
                    <label class="radio-inline" onclick="eventRODaily();">
                        <input type="radio" name="eventrocr" id="eventreOc1" value="Daily" checked="checked">
                        Daily
                    </label>
                    <label class="radio-inline" onclick="eventROWeekly();">
                        <input type="radio" name="eventrocr" id="eventreOc2" value="Weekly" >
                        Weekly
                    </label>
                    <label class="radio-inline" onclick="eventROMonthy();">
                        <input type="radio" name="eventrocr" id="eventreOc3" value="Monthly">
                        Monthy
                    </label>
                    <label class="radio-inline" onclick="eventROYearly();">
                        <input type="radio" name="eventrocr" id="eventreOc4" value="Yearly">
                        Yearly
                    </label>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="rodaily">
                        Every<input class="form-control" type="number" id="rodailyFrequency" pattern=".{1,30}" placeholder="Maximum limit is 30 Days" min="1" max="30" />Days
                        <br />
                        <hr />
                        Range of Recurrence
                        <input class="form-control" type="number" id="rodailyRange" placeholder="Maximum limit is 30 Days" min="1"  max="30" />Days
                    </div>
                    <div id="roweekly" style="display: none">
                        Every
                        <input class="form-control" type="number" id="rodailyweekly" placeholder="Maximum limit is 24 Weeks" min="1"  max="24" />Weeks
                         <br />
                        <hr />
                        Range  
                        <input class="form-control" type="number" id="roweeklyRange" placeholder="Maximum limit is 24 Weeks" min="1"  max="24" />Weeks
                    </div>
                    <div id="romonthly" style="display: none">
                        Every
                        <input class="form-control" type="number" id="rodailymonthly" placeholder="Maximum limit is 12 Months" min="1"  max="12" />Months
                         <br />
                        <hr />
                        Range of Recurrence
                        <input class="form-control" type="number" id="romonthlyRange" placeholder="Maximum limit is 12 Months" min="1"  max="12" />Months
                    </div>
                    <div id="royearly" style="display: none">
                        Every
                        <input class="form-control" type="number" id="rodailyyearly" placeholder="Maximum limit is 10 Years" min="1"  max="10" />Years
                         <br />
                        <hr />
                        Range of Recurrence
                        <input class="form-control" type="number" id="royearlyRange" placeholder="Maximum limit is 10 Years" min="1"  max="10" />Years
                    </div>
                </td>
            </tr>
            <tr>
                <td>

                </td>
                <td>
                     <div class="btn btn-save" onclick="saveReOccuranceEvent();">Create Event(s)</div>
                    <div class="btn btn-cancel" onclick="cancelEventReoccurance();">Cancel</div>
                </td>
            </tr>
        </table>

    </div>
    
    
    
    
    <div id="loader" style="display: none;">
        <div id="blocking-wait-indicator" class="">
            <div class="wait-overlay"></div>
            <table class="vertical-centering-helper">
                <tbody><tr>
                    <td>
                        <div class="wait-spinner" style="text-align:center">
                            <%--<img src="\images\loader1.GIF" width="508" height="381">--%>
                            <span class="wait"></span>
                        </div>
                    </td>
                </tr>
            </tbody></table>
        </div>
    </div>                               

     <!-- App Users View -->
    <div id="AllAppUsersVerification" style="display: none; float: left; width: 100%">
        <div id="errAllAppUsersVerification" class="errorClass"></div>
        <div id="AppuserListVerification"></div>
        <%--<div class="addCustomButton_new"><span>Click on any row to check details</span></div>--%>
        
        <div id="CopyEmailSiteRepAppusers" class="btn btn-default CustomButtons" onclick="CopyEmail('AppUserVerificationTable');"><span>Copy Email</span></div>
        <div id="ShareSiteRepAppusers" class="btn btn-default CustomButtons" onclick="Share();"><span>Share</span></div>

         <div id="AddeSiteAppusers" class="btn btn-default CustomButtons" onclick="SiteRepUsersRequest('Approve');"><span>Approve</span></div>
        <div id="RejectAppusers" class="btn btn-default CustomButtons" onclick="SiteRepUsersRequest('Reject');"><span>Reject</span></div>
        <div id="AppUsersHeadingVerification" class="headingCustom hideIt">University/Organization Users</div>
        <div id="AppusersDivVerification"></div>
    </div>
    
    
        <div id="copyEmailDiv" title="Copy Email" style="display: none;">
        
        <table class="table">
            <tr>
                <td>
                    <label class="control-label"> User Emails</label>
                </td>
                <td colspan="8">
                    <textarea id="copyEmails" class="form-control"  style="width: 600px;  height:150px" rows="3" cols="8" placeholder="Emails"></textarea>
                </td>
            </tr>
            
        </table>
    </div>
    

</asp:Content>



                  

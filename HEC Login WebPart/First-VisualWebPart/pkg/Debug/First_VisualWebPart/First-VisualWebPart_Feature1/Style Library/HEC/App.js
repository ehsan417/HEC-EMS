var context;
var web;
var user;
var spUniDomainList = 'UniversityDomain';
var spEventList = 'EventList';
var siteUrl = "";
var disciplinelst = [];
//$(document).ready(function () {
$(function () {
    SP.SOD.executeFunc('sp.js', 'SP.ClientContext', function () {
        var query = window.location.search.substring(1);
        //if (window.location.href.indexOf("ttps://stpxell-public.sharepoint.com/") > -1) {
        //    siteUrl = "ttps://stpxell-public.sharepoint.com/";
        //    //alert(siteUrl );
        //}
        //else if (window.location.href.indexOf("ttp://stpxell-public.sharepoint.com/") > -1) {
        //    siteUrl = "ttps://stpxell-public.sharepoint.com/";
        //    // alert(siteUrl );
        //}

        //if (window.location.href.indexOf("https://xellems-public.sharepoint.com/") > -1) {
        //    siteUrl = "https://xellems-public.sharepoint.com/";
        //    //alert(siteUrl );
        //}
        //else if (window.location.href.indexOf("http://xellems-public.sharepoint.com/") > -1) {
        //    siteUrl = "https://xellems-public.sharepoint.com/";
        //    // alert(siteUrl );
        //}
        
        if (window.location.href.indexOf("https://pern-public.sharepoint.com/") > -1) {
            siteUrl = "https://pern-public.sharepoint.com/";
            //alert(siteUrl );
        }
        else if (window.location.href.indexOf("https://pern-public.sharepoint.com/") > -1) {
            siteUrl = "https://pern-public.sharepoint.com/";
            // alert(siteUrl );
        }

        


        //var activeView = $("input[name*='hdnActiveView']")[0].value;
        var activeView = $(".signon").val();
        if (activeView != 'signUp') {
            PopulateDropDownList();
            SearchCalendar();
        }
    });
    if ($("#lnkRedirect")[0] != undefined) {
        $("#lnkRedirect")[0].click();
    }



    scheduler.attachEvent("onClick", function (id, e) {
        scheduler.config.isReadonly = true;
        $(".dhx_cal_quick_info").hide();
        return false;
    });

    scheduler.attachEvent("onDblClick", function (id, e) {
        scheduler.config.isReadonly = true;
        $(".dhx_cal_quick_info").hide();
        return false;
    });

    scheduler.attachEvent("onBeforeDrag", function (id, move, e) {
        if (id != null) {
            scheduler.getEvent(id).readonly = true;
        }
        return false;
    });

    

});


function PopulateDropDownList() {
    var soapEnv2 = "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/'><soapenv:Body><GetListItems xmlns='http://schemas.microsoft.com/sharepoint/soap/'>";
    soapEnv2 += "<listName>UniversityDomain</listName>";
    soapEnv2 += "<Query></Query>";
    soapEnv2 += "<ViewFields></ViewFields>";
    soapEnv2 += "<RowLimit></RowLimit>";
    soapEnv2 += "</GetListItems></soapenv:Body></soapenv:Envelope>";

    $.ajax({
        url: siteUrl + "/_vti_bin/lists.asmx",
        type: "POST",
        dataType: "xml",
        data: soapEnv2,
        complete: onUniDomainQuerySucceeded,
        contentType: "text/xml; charset=\"utf-8\""
    });

}

function onUniDomainQuerySucceeded(xData, status) {
    try {
        disciplinelst = [];
        var newDomainType = document.getElementById('drpdwnDisciplinelst');
        if (newDomainType != null) {
            DropDowncleaner(document.getElementById('drpdwnDisciplinelst'));
            var option = document.createElement('option');
            option.innerHTML = 'Select Discipline';
            option.value = '-1';
            newDomainType.appendChild(option);

            $(xData.responseText).find("z\\:row").each(function () {
                var title = $(this).attr("ows_Title");
                var id = $(this).attr("ows_ID");
                var colour = $(this).attr("ows_ColorInHEX");
                if (title == null) {
                    title = "";
                }
                if (id == null) {
                    id = 0;
                }
                var option = document.createElement('option');
                option.innerHTML = title;
                option.value = id;
                newDomainType.appendChild(option);
                
                //eventlist.push({ ID: itemId, Title: itemTitle, startDate: itemStartDate, EndDate: itemEndDate, customCreatedBy: itemCustomCreatedBy, Status: itemEventStatus, siteName: eventsiteName });
                disciplinelst.push({ ID: id, Title: title, colour: colour });
            });
            $("#drpdwnDisciplinelst option[value='-1']").prop("selected", true);
        } else {
            $(xData.responseText).find("z\\:row").each(function () {

                var title = $(this).attr("ows_Title");
                var id = $(this).attr("ows_ID");
            });
        }
    }
    catch (e) {
        alert(e.message);
    }
}

function SearchCalendar() {

    // Configuration settings for Scheduler
    scheduler.clearAll();
    scheduler.endLightbox(false);

    scheduler.config.isReadonly = true;
    scheduler.config.dblclick_create = false;
    scheduler.templates.tooltip_date_format = scheduler.date.date_to_str("%Y-%m-%d %H:%i");


    var discipineId = $('#drpdwnDisciplinelst').val();
    var soapEnv2 = "<soapenv:Envelope xmlns:soapenv='http://schemas.xmlsoap.org/soap/envelope/'><soapenv:Body><GetListItems xmlns='http://schemas.microsoft.com/sharepoint/soap/'>";
    soapEnv2 += "<listName>EventList</listName>";

    var strQuery = "";
    if (discipineId == '-1' || discipineId == null || discipineId == 'null') {
        strQuery = "<Query></Query>";
    } else {
        strQuery = "<query><Query><Where><Eq><FieldRef Name='EventDiscipline' /><Value Type='Lookup'>" + discipineId + "</Value></Eq></Where></Query></query>";
    }

    soapEnv2 += strQuery + "<ViewFields></ViewFields>" +
        "<RowLimit></RowLimit></GetListItems>" +
        "</soapenv:Body></soapenv:Envelope>";

    $.ajax({
        url: siteUrl + "/_vti_bin/lists.asmx",
        type: "POST",
        dataType: "xml",
        data: soapEnv2,
        complete: onSearchCalendarSucceeded,
        contentType: "text/xml; charset=\"utf-8\""
    });
}

function onSearchCalendarSucceeded(xData, status) {
    try {
        var myJsonObject = [];
        var eventlist = [];

        $(xData.responseText).find("z\\:row").each(function () {

            var itemId = $(this).attr("ows_ID");
            var itemTitle = $(this).attr("ows_Title");
            var itemStartDate = $(this).attr("ows_StartDate");
            var itemEndDate = $(this).attr("ows_EndDate");
            var itemCustomCreatedBy = $(this).attr("ows_CustomCreatedBy");
            var itemEventStatus = $(this).attr("ows_EventStatus");
            var eventsiteName = $(this).attr("ows_SiteName");
            var eventDiscipline = $(this).attr("ows_EventDiscipline");
            var eventDisciplineId = eventDiscipline.split(";");
            var disciplineColour = "";
            if (itemTitle == null) {
                itemTitle = "";
            }
            if (itemStartDate == undefined) {
                itemStartDate = new Date(99, 1, 1);
            }
            if (itemEndDate == undefined) {
                itemEndDate = new Date(99, 1, 2);
            }
            if (itemCustomCreatedBy == undefined) {
                itemCustomCreatedBy = "";
            }
            if (itemEventStatus == null) {
                itemEventStatus = "";
            }

            if (eventDisciplineId == null) {
                eventDiscipline = "";
            }

            for (var j = 0; j < disciplinelst.length;j++)
            {
                if (eventDisciplineId[0] == disciplinelst[j].ID) {
                    disciplineColour = disciplinelst[j].colour;
                }
            }

            eventlist.push({ ID: itemId, Title: itemTitle, startDate: itemStartDate, EndDate: itemEndDate, customCreatedBy: itemCustomCreatedBy, Status: itemEventStatus, siteName: eventsiteName, Colour: disciplineColour });
        });

        if (eventlist.length != 0) {
            var i = 0;
            while (i < eventlist.length) {
                //myJsonObject.push({ start_date: eventlist[i].startDate, end_date: eventlist[i].EndDate, text: eventlist[i].Title, section_id: i, color: "#1082B5" });
                //myJsonObject.push({ start_date: eventlist[i].startDate, end_date: eventlist[i].EndDate, text: eventlist[i].Title + " ( Venue: " + eventlist[i].siteName + " )", section_id: i, color: "#1082B5" });
                myJsonObject.push({ start_date: eventlist[i].startDate, end_date: eventlist[i].EndDate, text: eventlist[i].Title + " ( Venue: " + eventlist[i].siteName + " )", section_id: i, color: eventlist[i].Colour });
                
                i++;
            }
            //scheduler.locale.labels.timeline_tab = "Timeline";
            //scheduler.locale.labels.section_custom = "Section";
            scheduler.config.details_on_create = false;
            scheduler.config.details_on_dblclick = false;
            scheduler.config.quick_info_detached = false;
            scheduler.config.xml_date = "%Y-%m-%d %H:%i";

            scheduler.config.readonly_form = true;
            scheduler.init('calenderLoaderView', new Date(), "month");
            scheduler.parse(myJsonObject, "json");
            $('#calenderLoader').show();
            $("#month_tab").trigger("click");


            scheduler.config.isReadonly = true;
            document.getElementById("calenderLoader").style.display = 'block';

        }
        else {
            //scheduler.locale.labels.timeline_tab = "Timeline";
            //scheduler.locale.labels.section_custom = "Section";
            scheduler.config.details_on_create = false;
            scheduler.config.details_on_dblclick = false;
            scheduler.config.quick_info_detached = false;
            scheduler.config.xml_date = "%Y-%m-%d %H:%i";

            scheduler.config.readonly_form = true;
            scheduler.init('calenderLoaderView', new Date(), "month");
            $('#calenderLoader').show();
            $("#month_tab").trigger("click");
            scheduler.config.isReadonly = true;
            document.getElementById("calenderLoader").style.display = 'block';
        }
        if ($("#dhx_cal_today_button")[0] != undefined) {
            $("#dhx_cal_today_button")[0].click();
        }

        $('#calendarRow').height($('.dhx_cal_data table').height() + 100);
        $('.dhx_cal_event_clear, .dhx_cal_event_line').animate({ top: '+=20' }, 0);


        //$('#SecondryDiv1').height(($('#CalendarPanel').height() / 1.25) - 10);
        //$('#SecondryDiv2').height(($('#CalendarPanel').height() / 5) - 10);

        //$('#SecondryDiv2').height(($('#CalendarPanel').height() / 1.42) - 10);
        //$('#SecondryDiv1').height(($('#CalendarPanel').height() / 3.39) - 10);

        //$('#SecondryDiv1').height(($('#CalendarPanel').height() / 2.5)- 10);
        //$('#SecondryDiv2').height(($('#CalendarPanel').height() / 1.66) - 10);

        $('#SecondryDiv1').height(($('#CalendarPanel').height() / 2.22) - 10);
        $('#SecondryDiv2').height(($('#CalendarPanel').height() / 1.81) - 10);
    }
    catch (e) {
        alert(e.message);
    }
}

function onQueryFailed(sender, args) {

    alert('Request failed. ' + args.get_message() + '\n' + args.get_stackTrace());
}

function DropDowncleaner(selectbox) {
    if (selectbox != undefined) {
        var i;
        for (i = selectbox.options.length - 1; i >= 0; i--) {
            selectbox.remove(i);
        }
    }
}



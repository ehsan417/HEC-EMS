/*
dhtmlxScheduler v.4.2.0 Stardard

This software is covered by GPL license. You also can obtain Commercial or Enterprise license to use it in non-GPL project - please contact sales@dhtmlx.com. Usage without proper license is prohibited.

(c) Dinamenta, UAB.
*/
scheduler.attachEvent("onTimelineCreated",function(e){"tree"==e.render&&(e.y_unit_original=e.y_unit,e.y_unit=scheduler._getArrayToDisplay(e.y_unit_original),scheduler.attachEvent("onOptionsLoadStart",function(){e.y_unit=scheduler._getArrayToDisplay(e.y_unit_original)}),scheduler.form_blocks[e.name]={render:function(e){var t="<div class='dhx_section_timeline' style='overflow: hidden; height: "+e.height+"px'></div>";return t},set_value:function(e,t,r,s){var a=scheduler._getArrayForSelect(scheduler.matrix[s.type].y_unit_original,s.type);
e.innerHTML="";var n=document.createElement("select");e.appendChild(n);var i=e.getElementsByTagName("select")[0];!i._dhx_onchange&&s.onchange&&(i.onchange=s.onchange,i._dhx_onchange=!0);for(var d=0;d<a.length;d++){var l=document.createElement("option");l.value=a[d].key,l.value==r[scheduler.matrix[s.type].y_property]&&(l.selected=!0),l.innerHTML=a[d].label,i.appendChild(l)}},get_value:function(e){return e.firstChild.value},focus:function(){}})}),scheduler.attachEvent("onBeforeSectionRender",function(e,t,r){var s={};
if("tree"==e){var a,n,i,d,l,o;t.children?(a=r.folder_dy||r.dy,r.folder_dy&&!r.section_autoheight&&(i="height:"+r.folder_dy+"px;"),n="dhx_row_folder",d="dhx_matrix_scell folder",l="<div class='dhx_scell_expand'>"+(t.open?"-":"+")+"</div>",o=r.folder_events_available?"dhx_data_table folder_events":"dhx_data_table folder"):(a=r.dy,n="dhx_row_item",d="dhx_matrix_scell item"+(scheduler.templates[r.name+"_scaley_class"](t.key,t.label,t)?" "+scheduler.templates[r.name+"_scaley_class"](t.key,t.label,t):""),l="",o="dhx_data_table");
var _="<div class='dhx_scell_level"+t.level+"'>"+l+"<div class='dhx_scell_name'>"+(scheduler.templates[r.name+"_scale_label"](t.key,t.label,t)||t.label)+"</div></div>";s={height:a,style_height:i,tr_className:n,td_className:d,td_content:_,table_className:o}}return s});var section_id_before;scheduler.attachEvent("onBeforeEventChanged",function(e,t,r){if(scheduler._isRender("tree")){var s=scheduler.getSection(e[scheduler.matrix[scheduler._mode].y_property]);if(s&&"undefined"!=typeof s.children&&!scheduler.matrix[scheduler._mode].folder_events_available)return r||(e[scheduler.matrix[scheduler._mode].y_property]=section_id_before),!1
}return!0}),scheduler.attachEvent("onBeforeDrag",function(e,t,r){if(scheduler._isRender("tree")){var s,a=scheduler._locate_cell_timeline(r);if(a&&(s=scheduler.matrix[scheduler._mode].y_unit[a.y].key,"undefined"!=typeof scheduler.matrix[scheduler._mode].y_unit[a.y].children&&!scheduler.matrix[scheduler._mode].folder_events_available))return!1;var n=scheduler.getEvent(e);section_id_before=s||n[scheduler.matrix[scheduler._mode].y_property]}return!0}),scheduler._getArrayToDisplay=function(e){var t=[],r=function(e,s){for(var a=s||0,n=0;n<e.length;n++)e[n].level=a,"undefined"!=typeof e[n].children&&"undefined"==typeof e[n].key&&(e[n].key=scheduler.uid()),t.push(e[n]),e[n].open&&e[n].children&&r(e[n].children,a+1)
};return r(e),t},scheduler._getArrayForSelect=function(e,t){var r=[],s=function(e){for(var a=0;a<e.length;a++)scheduler.matrix[t].folder_events_available?r.push(e[a]):"undefined"==typeof e[a].children&&r.push(e[a]),e[a].children&&s(e[a].children,t)};return s(e),r},scheduler._toggleFolderDisplay=function(e,t,r){var s,a=function(e,t,r,n){for(var i=0;i<t.length&&(t[i].key!=e&&!n||!t[i].children||(t[i].open="undefined"!=typeof r?r:!t[i].open,s=!0,n||!s));i++)t[i].children&&a(e,t[i].children,r,n)},n=scheduler.getSection(e);
"undefined"!=typeof t||r||(t=!n.open),scheduler.callEvent("onBeforeFolderToggle",[n,t,r])&&(a(e,scheduler.matrix[scheduler._mode].y_unit_original,t,r),scheduler.matrix[scheduler._mode].y_unit=scheduler._getArrayToDisplay(scheduler.matrix[scheduler._mode].y_unit_original),scheduler.callEvent("onOptionsLoad",[]),scheduler.callEvent("onAfterFolderToggle",[n,t,r]))},scheduler.attachEvent("onCellClick",function(e,t){scheduler._isRender("tree")&&(scheduler.matrix[scheduler._mode].folder_events_available||"undefined"!=typeof scheduler.matrix[scheduler._mode].y_unit[t]&&"undefined"!=typeof scheduler.matrix[scheduler._mode].y_unit[t].children&&scheduler._toggleFolderDisplay(scheduler.matrix[scheduler._mode].y_unit[t].key))
}),scheduler.attachEvent("onYScaleClick",function(e,t){scheduler._isRender("tree")&&"undefined"!=typeof t.children&&scheduler._toggleFolderDisplay(t.key)}),scheduler.getSection=function(e){if(scheduler._isRender("tree")){var t,r=function(e,s){for(var a=0;a<s.length;a++)s[a].key==e&&(t=s[a]),s[a].children&&r(e,s[a].children)};return r(e,scheduler.matrix[scheduler._mode].y_unit_original),t||null}},scheduler.deleteSection=function(e){if(scheduler._isRender("tree")){var t=!1,r=function(e,s){for(var a=0;a<s.length&&(s[a].key==e&&(s.splice(a,1),t=!0),!t);a++)s[a].children&&r(e,s[a].children)
};return r(e,scheduler.matrix[scheduler._mode].y_unit_original),scheduler.matrix[scheduler._mode].y_unit=scheduler._getArrayToDisplay(scheduler.matrix[scheduler._mode].y_unit_original),scheduler.callEvent("onOptionsLoad",[]),t}},scheduler.deleteAllSections=function(){scheduler._isRender("tree")&&(scheduler.matrix[scheduler._mode].y_unit_original=[],scheduler.matrix[scheduler._mode].y_unit=scheduler._getArrayToDisplay(scheduler.matrix[scheduler._mode].y_unit_original),scheduler.callEvent("onOptionsLoad",[]))
},scheduler.addSection=function(e,t){if(scheduler._isRender("tree")){var r=!1,s=function(e,a,n){if(t)for(var i=0;i<n.length&&(n[i].key==a&&"undefined"!=typeof n[i].children&&(n[i].children.push(e),r=!0),!r);i++)n[i].children&&s(e,a,n[i].children);else n.push(e),r=!0};return s(e,t,scheduler.matrix[scheduler._mode].y_unit_original),scheduler.matrix[scheduler._mode].y_unit=scheduler._getArrayToDisplay(scheduler.matrix[scheduler._mode].y_unit_original),scheduler.callEvent("onOptionsLoad",[]),r}},scheduler.openAllSections=function(){scheduler._isRender("tree")&&scheduler._toggleFolderDisplay(1,!0,!0)
},scheduler.closeAllSections=function(){scheduler._isRender("tree")&&scheduler._toggleFolderDisplay(1,!1,!0)},scheduler.openSection=function(e){scheduler._isRender("tree")&&scheduler._toggleFolderDisplay(e,!0)},scheduler.closeSection=function(e){scheduler._isRender("tree")&&scheduler._toggleFolderDisplay(e,!1)};
//# sourceMappingURL=../sources/ext/dhtmlxscheduler_treetimeline.js.map
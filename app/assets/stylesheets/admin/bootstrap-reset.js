import React, {StyleSheet, Dimensions, PixelRatio} from "react-native";
const {width, height, scale} = Dimensions.get("window"),
    vw = width / 100,
    vh = height / 100,
    vmin = Math.min(vw, vh),
    vmax = Math.max(vw, vh);

export default StyleSheet.create({
    "a": {
        "color": "#667fa0"
    },
    "a:hover": {
        "color": "#2A3542"
    },
    "panel": {
        "border": "none",
        "boxShadow": "none"
    },
    "panel-heading": {
        "borderColor": "#eff2f7",
        "fontSize": 16,
        "fontWeight": "300"
    },
    "panel-title": {
        "color": "#2A3542",
        "fontSize": 14,
        "fontWeight": "400",
        "marginBottom": 0,
        "marginTop": 0,
        "fontFamily": "'Open Sans', sans-serif"
    },
    "label": {
        "paddingTop": 0.5,
        "paddingRight": 0.8,
        "paddingBottom": 0.5,
        "paddingLeft": 0.8
    },
    "label-default": {
        "backgroundColor": "#a1a1a1"
    },
    "label-primary": {
        "backgroundColor": "#59ace2"
    },
    "label-success": {
        "backgroundColor": "#A9D86E"
    },
    "label-info": {
        "backgroundColor": "#8175c7"
    },
    "label-warning": {
        "backgroundColor": "#FCB322"
    },
    "label-danger": {
        "backgroundColor": "#FF6C60"
    },
    "label-inverse": {
        "backgroundColor": "#344860"
    },
    "text-danger": {
        "color": "#FF6C60"
    },
    "text-muted": {
        "color": "#a1a1a1"
    },
    "text-primary": {
        "color": "#59ace2"
    },
    "text-warning": {
        "color": "#FCB322"
    },
    "text-success": {
        "color": "#A9D86E"
    },
    "text-info": {
        "color": "#8175c7"
    },
    "modal-content": {
        "boxShadow": "none",
        "border": "none"
    },
    "modal-header": {
        "background": "#00A8B3",
        "color": "#fff",
        "borderRadius": "5px 5px 0 0",
        "WebkitBorderRadius": "5px 5px 0 0",
        "borderBottom": "none"
    },
    "modal-header close": {
        "marginTop": 0
    },
    "form-control": {
        "border": "1px solid #e2e2e4",
        "boxShadow": "none",
        "color": "grey"
    },
    "form-control:focus": {
        "border": "1px solid #517397",
        "boxShadow": "none"
    },
    "focusedInput": {
        "border": "1px solid #517397",
        "boxShadow": "none"
    },
    "form-horizontal control-label": {
        "fontWeight": "300",
        "fontSize": 14,
        "textAlign": "left"
    },
    "input": {
        "outline": "none !important"
    },
    "textarea": {
        "outline": "none !important"
    },
    "select": {
        "outline": "none !important"
    },
    "button": {
        "outline": "none !important"
    },
    "ul": {
        "paddingLeft": 0
    },
    "btn-default": {
        "backgroundColor": "#bec3c7",
        "borderColor": "#bec3c7",
        "color": "#fff"
    },
    "btn-default:hover": {
        "backgroundColor": "#b0b5b9",
        "borderColor": "#b0b5b9",
        "color": "#fff"
    },
    "btn-default:focus": {
        "backgroundColor": "#b0b5b9",
        "borderColor": "#b0b5b9",
        "color": "#fff"
    },
    "btn-default:active": {
        "backgroundColor": "#b0b5b9",
        "borderColor": "#b0b5b9",
        "color": "#fff"
    },
    "btn-defaultactive": {
        "backgroundColor": "#b0b5b9",
        "borderColor": "#b0b5b9",
        "color": "#fff"
    },
    "open dropdown-togglebtn-default": {
        "backgroundColor": "#b0b5b9",
        "borderColor": "#b0b5b9",
        "color": "#fff"
    },
    "btn-primary": {
        "backgroundColor": "#41cac0",
        "borderColor": "#41cac0",
        "color": "#FFFFFF"
    },
    "btn-primary:hover": {
        "backgroundColor": "#39b2a9",
        "borderColor": "#39b2a9",
        "color": "#FFFFFF"
    },
    "btn-primary:focus": {
        "backgroundColor": "#39b2a9",
        "borderColor": "#39b2a9",
        "color": "#FFFFFF"
    },
    "btn-primary:active": {
        "backgroundColor": "#39b2a9",
        "borderColor": "#39b2a9",
        "color": "#FFFFFF"
    },
    "btn-primaryactive": {
        "backgroundColor": "#39b2a9",
        "borderColor": "#39b2a9",
        "color": "#FFFFFF"
    },
    "open dropdown-togglebtn-primary": {
        "backgroundColor": "#39b2a9",
        "borderColor": "#39b2a9",
        "color": "#FFFFFF"
    },
    "btn-success": {
        "backgroundColor": "#78CD51",
        "borderColor": "#78CD51",
        "color": "#FFFFFF"
    },
    "btn-success:hover": {
        "backgroundColor": "#6dbb4a",
        "borderColor": "#6dbb4a",
        "color": "#FFFFFF"
    },
    "btn-success:focus": {
        "backgroundColor": "#6dbb4a",
        "borderColor": "#6dbb4a",
        "color": "#FFFFFF"
    },
    "btn-success:active": {
        "backgroundColor": "#6dbb4a",
        "borderColor": "#6dbb4a",
        "color": "#FFFFFF"
    },
    "btn-successactive": {
        "backgroundColor": "#6dbb4a",
        "borderColor": "#6dbb4a",
        "color": "#FFFFFF"
    },
    "open dropdown-togglebtn-success": {
        "backgroundColor": "#6dbb4a",
        "borderColor": "#6dbb4a",
        "color": "#FFFFFF"
    },
    "btn-info": {
        "backgroundColor": "#58c9f3",
        "borderColor": "#58c9f3",
        "color": "#FFFFFF"
    },
    "btn-info:hover": {
        "backgroundColor": "#53bee6",
        "borderColor": "#53BEE6",
        "color": "#FFFFFF"
    },
    "btn-info:focus": {
        "backgroundColor": "#53bee6",
        "borderColor": "#53BEE6",
        "color": "#FFFFFF"
    },
    "btn-info:active": {
        "backgroundColor": "#53bee6",
        "borderColor": "#53BEE6",
        "color": "#FFFFFF"
    },
    "btn-infoactive": {
        "backgroundColor": "#53bee6",
        "borderColor": "#53BEE6",
        "color": "#FFFFFF"
    },
    "open dropdown-togglebtn-info": {
        "backgroundColor": "#53bee6",
        "borderColor": "#53BEE6",
        "color": "#FFFFFF"
    },
    "btn-warning": {
        "backgroundColor": "#f1c500",
        "borderColor": "#f1c500",
        "color": "#FFFFFF"
    },
    "btn-warning:hover": {
        "backgroundColor": "#e4ba00",
        "borderColor": "#e4ba00",
        "color": "#FFFFFF"
    },
    "btn-warning:focus": {
        "backgroundColor": "#e4ba00",
        "borderColor": "#e4ba00",
        "color": "#FFFFFF"
    },
    "btn-warning:active": {
        "backgroundColor": "#e4ba00",
        "borderColor": "#e4ba00",
        "color": "#FFFFFF"
    },
    "btn-warningactive": {
        "backgroundColor": "#e4ba00",
        "borderColor": "#e4ba00",
        "color": "#FFFFFF"
    },
    "open dropdown-togglebtn-warning": {
        "backgroundColor": "#e4ba00",
        "borderColor": "#e4ba00",
        "color": "#FFFFFF"
    },
    "btn-danger": {
        "backgroundColor": "#ff6c60",
        "borderColor": "#ff6c60",
        "color": "#FFFFFF"
    },
    "btn-danger:hover": {
        "backgroundColor": "#ec6459",
        "borderColor": "#ec6459",
        "color": "#FFFFFF"
    },
    "btn-danger:focus": {
        "backgroundColor": "#ec6459",
        "borderColor": "#ec6459",
        "color": "#FFFFFF"
    },
    "btn-danger:active": {
        "backgroundColor": "#ec6459",
        "borderColor": "#ec6459",
        "color": "#FFFFFF"
    },
    "btn-dangeractive": {
        "backgroundColor": "#ec6459",
        "borderColor": "#ec6459",
        "color": "#FFFFFF"
    },
    "open dropdown-togglebtn-danger": {
        "backgroundColor": "#ec6459",
        "borderColor": "#ec6459",
        "color": "#FFFFFF"
    },
    "btn-white": {
        "boxShadow": "0 -1px 1px rgba(0, 0, 0, 0.05) inset",
        "backgroundClip": "padding-box",
        "backgroundColor": "#FFFFFF",
        "borderColor": "rgba(150, 160, 180, 0.3)"
    },
    "btn-round": {
        "borderRadius": 30,
        "WebkitBorderRadius": 30
    },
    "btn-shadowbtn-default": {
        "boxShadow": "0 4px #9c9c9c"
    },
    "btn-shadowbtn-primary": {
        "boxShadow": "0 4px #29b392"
    },
    "btn-shadowbtn-success": {
        "boxShadow": "0 4px #61a642"
    },
    "btn-shadowbtn-info": {
        "boxShadow": "0 4px #1caadc"
    },
    "btn-shadowbtn-warning": {
        "boxShadow": "0 4px #cab03f"
    },
    "btn-shadowbtn-danger": {
        "boxShadow": "0 4px #d1595a"
    },
    "btn-groupopen dropdown-toggle": {
        "boxShadow": "none"
    },
    "btn-whiteactive": {
        "boxShadow": "none"
    },
    "btn:active": {
        "boxShadow": "none"
    },
    "btnactive": {
        "boxShadow": "none"
    },
    "dropdown-menu > li > a:hover": {
        "backgroundColor": "#495d74",
        "color": "#FFFFFF",
        "textDecoration": "none"
    },
    "dropdown-menu > li > a:focus": {
        "backgroundColor": "#495d74",
        "color": "#FFFFFF",
        "textDecoration": "none"
    },
    "breadcrumb": {
        "backgroundColor": "#fff"
    },
    "nav-tabs > li > a": {
        "marginRight": 1
    },
    "panel-default > panel-heading": {
        "backgroundColor": "#FFFFFF",
        "borderColor": "#DDDDDD",
        "color": "#797979"
    },
    "navbar-inverse": {
        "backgroundColor": "#7087A3",
        "borderColor": "#7087A3"
    },
    "navbar-inverse navbar-nav > active > a": {
        "backgroundColor": "#61748d"
    },
    "navbar-inverse navbar-nav > active > a:hover": {
        "backgroundColor": "#61748d"
    },
    "navbar-inverse navbar-nav > active > a:focus": {
        "backgroundColor": "#61748d"
    },
    "navbar-inverse navbar-nav > open > a": {
        "backgroundColor": "#61748d"
    },
    "navbar-inverse navbar-nav > open > a:focus": {
        "backgroundColor": "#61748d"
    },
    "navbar-inverse navbar-nav > li a:hover": {
        "color": "#2A3542"
    },
    "navbar-inverse navbar-nav > li > ul > li a:hover": {
        "color": "#fff"
    },
    "navbar-inverse navbar-brand": {
        "color": "#FFFFFF"
    },
    "navbar-inverse navbar-nav > li > a": {
        "color": "#fff"
    },
    "navbar-inverse navbar-nav > dropdown > a caret": {
        "borderBottomColor": "#fff",
        "borderTopColor": "#fff"
    },
    "navbar-inverse navbar-nav open dropdown-menu > li > a": {
        "color": "#000"
    },
    "navbar-inverse navbar-nav open dropdown-menu > li > a:hover": {
        "color": "#fff"
    },
    "nav-justified": {
        "width": "auto !important"
    },
    "nav-justified li:last-child > a:hover": {
        "borderRadius": "0 4px 0 0 !important",
        "WebkitBorderRadius": "0 4px 0 0 !important"
    },
    "nav-justified liactive:last-child > a": {
        "borderRadius": "0 4px 0 0 !important",
        "WebkitBorderRadius": "0 4px 0 0 !important"
    },
    "list-group-itemactive": {
        "backgroundColor": "#00A8B3",
        "borderColor": "#00A8B3",
        "color": "#FFFFFF",
        "zIndex": 2
    },
    "list-group-itemactive:hover": {
        "backgroundColor": "#00A8B3",
        "borderColor": "#00A8B3",
        "color": "#FFFFFF",
        "zIndex": 2
    },
    "list-group-itemactive:focus": {
        "backgroundColor": "#00A8B3",
        "borderColor": "#00A8B3",
        "color": "#FFFFFF",
        "zIndex": 2
    },
    "list-group-item-heading": {
        "fontWeight": "300"
    },
    "progress": {
        "boxShadow": "none",
        "background": "#f0f2f7"
    },
    "alert-success": {
        "border": "none"
    },
    "alert-danger": {
        "border": "none"
    },
    "alert-info": {
        "border": "none"
    },
    "alert-warning": {
        "border": "none"
    },
    "table thead > tr > th": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    },
    "table tbody > tr > th": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    },
    "table tfoot > tr > th": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    },
    "table thead > tr > td": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    },
    "table tbody > tr > td": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    },
    "table tfoot > tr > td": {
        "paddingTop": 10,
        "paddingRight": 10,
        "paddingBottom": 10,
        "paddingLeft": 10
    }
});
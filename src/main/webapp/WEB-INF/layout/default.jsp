<%--
  Created by IntelliJ IDEA.
  User: xlch
  Date: 2017/2/21
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sitemesh" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<%--<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>--%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<c:set var="module" value="channel"/>

<!DOCTYPE html>
<html>
<head>
    <title>电池在线销售平台后台管理:<sitemesh:title/></title>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <meta http-equiv="Cache-Control" content="no-store" />
    <meta http-equiv="Pragma" content="no-cache" />
    <meta http-equiv="Expires" content="0" />

    <link type="image/x-icon" href="${ctx}/static/img/favicon.ico" rel="shortcut icon">

    <link href="${ctx}/static/assets/global/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/assets/global/plugins/simple-line-icons/simple-line-icons.min.css" rel="stylesheet"
          type="text/css"/>
    <link href="${ctx}/static/assets/global/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
          type="text/css"/>
    <link href="${ctx}/static/assets/global/css/components.min.css" rel="stylesheet" id="style_components" type="text/css"/>
    <link href="${ctx}/static/assets/layouts/layout/css/layout.min.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/assets/layouts/layout/css/themes/darkblue.css" rel="stylesheet" type="text/css" id="style_color"/>
    <link href="${ctx}/static/js/slider/unslider.css" rel="stylesheet" type="text/css"/>
    <%--<link href="${ctx}/static/js/datatables/datatables.css" rel="stylesheet" type="text/css"/>--%>
    <link href="${ctx}/static/js/datatables/DataTables-1.10.16/css/dataTables.bootstrap.css" rel="stylesheet" type="text/css"/>
    <%--<link href="${ctx}/static/js/slider/reset.css" rel="stylesheet" type="text/css"/>--%>
    <%--<link href="${ctx}/static/js/site/site.css" rel="stylesheet" type="text/css"/>--%>
    <link href="${ctx}/static/css/custom.css" rel="stylesheet" type="text/css"/>
    <link href="${ctx}/static/css/back-common.css" rel="stylesheet" type="text/css"/>
    <script src="${ctx}/static/assets/global/plugins/jquery.min.js" type="text/javascript"></script>
    <script src="${ctx}/static/assets/global/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <sitemesh:head />

</head>

<body class="page-header-fixed page-container-bg-solid page-boxed" <sitemesh:getProperty property="body.id" writeEntireProperty="true" />>
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
    <!-- BEGIN HEADER INNER -->
    <div class="page-header-inner container">
        <!-- BEGIN LOGO -->
        <div class="page-logo">
            <img src="${ctx}/static/img/cart.jpg" alt="logo" class="logo-default" />
        </div>
        <div class="site-title">电池在线销售平台后台管理</div>
        <!-- END LOGO -->
        <!-- BEGIN RESPONSIVE MENU TOGGLER -->
        <a href="javascript:;" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"> </a>
        <div class="top-menu">
            <ul class="nav navbar-nav pull-right">

                <%--<%@include file="/WEB-INF/layouts/backend-navigation.jsp"%>--%>

                <!-- BEGIN USER LOGIN DROPDOWN -->
                <%--<shiro:user>--%>
                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
                <li class="dropdown dropdown-user">
                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">

                            <span class="username username-hide-on-mobile">
                                <%--<shiro:principal />--%>
                                ${sessionScope.xm}
                            </span>
                        <i class="fa fa-angle-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-default">
                        <li>
                            <a href="${ctx}/back/logout">
                                <i class="icon-key"></i> 退出 </a>
                        </li>
                    </ul>
                </li>
                <%--</shiro:user>--%>
                <!-- END USER LOGIN DROPDOWN -->

            </ul>
        </div>
    </div>
    <!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<!-- BEGIN HEADER & CONTENT DIVIDER -->
<div class="clearfix"> </div>
<!-- END HEADER & CONTENT DIVIDER -->
<!-- BEGIN CONTAINER -->
<div class="container">
    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <%@ include file="/WEB-INF/layout/left.jsp" %>
        </div>
        <!-- BEGIN CONTENT -->
        <div class="page-content-wrapper">
            <sitemesh:body></sitemesh:body>
        </div>
        <!-- END CONTENT -->

    </div>
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<%@include file="/WEB-INF/layout/footer.jsp"%>
<!-- END FOOTER -->
<!--[if lt IE 9]>
<script src="${ctx}/static/global/plugins/respond.min.js"></script>
<script src="${ctx}/static/global/plugins/excanvas.min.js"></script>
<![endif]-->
<!-- BEGIN CORE PLUGINS -->
<%--<script src="${ctx}/static/global/plugins/js.cookie.min.js" type="text/javascript"></script>--%>
<%--<script src="${ctx}/static/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>--%>
<%--<script src="${ctx}/static/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>--%>
<%--<script src="${ctx}/static/global/plugins/jquery.blockui.min.js" type="text/javascript"></script>--%>
<%--<script src="${ctx}/static/global/plugins/uniform/jquery.uniform.min.js" type="text/javascript"></script>--%>
<script src="${ctx}/static/js/momentjs/moment.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN THEME GLOBAL SCRIPTS -->
<%--<script src="${ctx}/static/global/scripts/app.min.js" type="text/javascript"></script>--%>
<%--<script src="${ctx}/static/js/dateranges.js" type="text/javascript"></script>--%>
<script src="${ctx}/static/js/datatables/datatables.js" type="text/javascript"></script>
<script src="${ctx}/static/js/datatables/DataTables-1.10.16/js/dataTables.bootstrap.js" type="text/javascript"></script>
<!-- END THEME GLOBAL SCRIPTS -->
<!-- BEGIN THEME LAYOUT SCRIPTS -->
<%--<script src="${ctx}/static/layouts/layout/scripts/layout.min.js" type="text/javascript"></script>--%>
<script src="${ctx}/static/js/jquery-validator/jquery.validate.js" type="text/javascript"></script>
<script src="${ctx}/static/js/jquery-validator/locale/messages_zh.js" type="text/javascript"></script>
<script src="${ctx}/static/js/util/utils.js" type="text/javascript"></script>
<!-- END THEME LAYOUT SCRIPTS -->
<sitemesh:getProperty property="page.page_script"></sitemesh:getProperty>
</body>
</html>


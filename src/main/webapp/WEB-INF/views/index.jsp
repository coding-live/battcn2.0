 <%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/WEB-INF/views/common/common.jspf"%>
</head>
<body class="fixed-sidebar full-height-layout gray-bg pace-done skin-1">
	<div id="wrapper">
		<!--左侧导航开始-->
		<nav class="navbar-default navbar-static-side" role="navigation"
			style="height: 100%; position: fixed !important;">
			<div class="nav-close">
				<i class="fa fa-times-circle"></i>
			</div>
			<div class="sidebar-collapse">
				<ul class="nav" id="side-menu">
					<li class="nav-header">
						<div class="dropdown profile-element">
							<span><img alt="image" class="img-circle" src="<c:choose><c:when test='${empty USER_SESSION_KEY.photo}'>http://static.battcn.com/common/favicon.png</c:when><c:otherwise>${USER_SESSION_KEY.photo}</c:otherwise></c:choose>" width="64px" height="64px"/></span> <a
								data-toggle="dropdown" class="dropdown-toggle" href="#"> <span
								class="clear"> <span class="block m-t-xs"><strong
										class="font-bold">${USER_SESSION_KEY.name}</strong></span> <span
									class="text-muted text-xs block">超级管理员<b class="caret"></b></span>
							</span>
							</a>
							<ul class="dropdown-menu animated fadeInRight m-t-xs">
								<li><a class="J_menuItem" href="${ctx}/profile">修改头像</a>
								</li>
								<li><a class="J_menuItem">个人资料</a></li>
								<li><a class="J_menuItem">联系我们</a></li>
								<li class="divider"></li>
								<li><a href="${ctx}/logout">安全退出</a></li>
							</ul>
						</div>
						<div class="logo-element">battcn</div>
					</li>
					<c:if test="${list != null}">
					  	<c:forEach items="${list}" var="l">
					  		<li><a href="#"> <i class="${l.attributes.img}"></i><span class="nav-label">${l.text}</span> <span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<c:forEach items="${l.children}" var="c">
									<li><a title="${ch.text}" class="J_menuItem" href="${ctx}/op_list_${c.id}"><i class="${c.attributes.img}"></i>${c.text}</a></li>
								</c:forEach>
							</ul></li>
					  	</c:forEach>
				  </c:if>
				</ul>
			</div>
		</nav>
		<!--左侧导航结束-->
		<!--右侧部分开始-->
		<div id="page-wrapper" class="gray-bg dashbard-1" style="min-height: 643px;">
			<div class="row content-tabs">
				<button class="roll-nav roll-left J_tabLeft">
					<i class="fa fa-backward"></i>
				</button>
				<nav class="page-tabs J_menuTabs">
					<div class="page-tabs-content">
						<a href="javascript:void(0);" class="J_menuTab active main" id="main" data-id="main">首页</a>
					</div>
				</nav>
				<button class="roll-nav roll-right J_tabRight">
					<i class="fa fa-forward"></i>
				</button>
				<div class="btn-group roll-nav roll-right">
					<button class="dropdown J_tabClose" data-toggle="dropdown">
						关闭操作<span class="caret"></span>
					</button>
					<ul role="menu" class="dropdown-menu dropdown-menu-right">
						<li class="J_tabShowActive"><a class="navbar-minimalize "
							href="#">  关闭左侧菜单</a>
						</li>
						
						<li class="divider"></li>
						<li class="J_tabCloseAll"><a>关闭全部选项卡</a></li>
						<li class="J_tabCloseOther"><a>关闭其他选项卡</a></li>
					</ul>
				</div>
				<a href="${ctx}/logout" class="roll-nav roll-right J_tabExit"><i
					class="fa fa fa-sign-out"></i> 退出</a>
			</div>

			<div class="row J_mainContent bbg" id="content-main">
				<div class="J_box smartmenu index" width="100%" name="iframe0"
					data-id="main" height="100%" src="${ctx}/main"></div>
			</div>
			<div class="footer">
				<div class="my-pull-right">
					&copy; 2014-2017 <a href="javascript:void(0);">Bleak.Tang</a>
				</div>
			</div>
		</div>
		<!--右侧部分结束-->
	</div>
</body>

</html>
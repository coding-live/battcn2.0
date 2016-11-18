<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<script type="text/javascript">
    $(function(){
    	 battcn.ns('battcn.admin.menu${OP.menu}');
    	 $('#admin_menu${OP.menu}_datagrid').bootstrapTable({ 
             url:rootPath + '${MENU.channel}/query',
             height: '100%',
             sortName: 'createTime',
             sortOrder: 'desc',
             striped: true,
             pagination: true,
             pageSize: 10,
             pageList: [10, 25, 50, 100, 200],
             search: false,
             sidePagination:'server',
             idField: 'id',
             uniqueId: 'id',
             responseHandler: responseHandler,
             queryParams: queryParams,
             minimumCountColumns: 2,
             clickToSelect: true,
             columns: [{checkbox: true
             }, {
                 field: 'jobName',
                 title: '任务名',
                 align: 'center',
                 valign: 'middle'
             } , {
                 field: 'jobGroup',
                 title: '任务组',
                 align: 'center',
                 valign: 'middle'
             }, {
                 field: 'cronExpression',
                 title: 'cron表达式',
                 align: 'center',
                 valign: 'middle'
             } , {
                 field: 'description',
                 title: '描述',
                 align: 'center',
                 valign: 'middle'
             } , {
                 field: 'springId',
                 title: 'Spring ID',
                 align: 'center',
                 valign: 'middle'
             } , {
                 field: 'beanClass',
                 title: '类路径',
                 align: 'center',
                 valign: 'middle'
             } , {
                 field: 'methodName',
                 title: '方法名',
                 align: 'center',
                 valign: 'middle'
             }, {
                 field: 'isConcurrent',
                 title: '是否同步',
                 align: 'center',
                 valign: 'middle',
                 sortable: true,
                 formatter: function(val,row)
                 {
                	 return val == 1 ? '<i class="fa fa-check text-navy"></i> ': '<i class="fa fa-close text-danger"></i>';
                 }
             }, {
                 field: 'jobStatus',
                 title: '状态',
                 align: 'center',
                 valign: 'middle',
                 formatter: function(val, row, index)
                 {
                	var cmd = val == 0 ? "start" : "stop";
                 	return val == 0 ? '<a class="start" href="javascript:start('+row.id+')" title="start">开始</a> '
                      	 	: '<a class="stop" href="javascript:stop('+row.id+')" title="stop">暂停</a> ';
                 }
             } ],  
             onLoadSuccess: function (data) {
             },
             onLoadError: function (status) {
             }              
	     });
    	start = function(id)
  	   	{
    		battcn.ajaxJson({url:rootPath + '${MENU.channel}/operation',data:{id:id,cmd:"start"}},function(){
    			$('#admin_menu${OP.menu}_datagrid').bootstrapTable('refresh');
    		});
  	   	}
    	stop = function(id)
  	   	{
    		battcn.ajaxJson({url:rootPath + '${MENU.channel}/operation',data:{id:id,cmd:"stop"}},function(){
    			$('#admin_menu${OP.menu}_datagrid').bootstrapTable('refresh');
    		});
  	   	}
    	 
	});
</script>
<div class="wrapper wrapper-content animated fadeInRight">
	<div class="ibox float-e-margins">
		<div class="ibox-content">
			<%@ include file="/WEB-INF/views/common/toolbar.jsp"%>
			<div class="table-responsive">
				<p style="color: red">原谅作者太懒,增删改交给各位看官了,Job的对应操作都已经封装在SchedulerFactory</p>
				<table id="admin_menu${OP.menu}_datagrid" data-toolbar="#toolbar"
					data-show-refresh="true" data-show-toggle="true"
					data-show-columns="true" data-show-footer="false"
					data-mobile-responsive="true">
				</table>
			</div>
		</div>
	</div>
</div>

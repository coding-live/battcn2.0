package com.battcn.platform.controller.quartz;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.battcn.platform.entity.AjaxJson;
import com.battcn.platform.entity.DataGrid;
import com.battcn.platform.entity.quartz.ScheduleJobEntity;
import com.battcn.platform.service.quartz.ScheduleJobService;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/schedule/task")
public class ScheduleJobController
{
	// 日志记录器
	public final Logger log = Logger.getLogger(this.getClass());
	
	@Autowired
	private ScheduleJobService scheduleJobService;

	@RequestMapping("list")
	public String list()
	{
		return "quartz/list";
	}
	
	@RequestMapping(value = "/query")
	@ResponseBody
	public PageInfo<ScheduleJobEntity> query(DataGrid grid)
	{
		return this.scheduleJobService.queryScheduleJobForList(grid);
	}

	@RequestMapping(value = "/edit")
	public String edit(Integer id, Model model)
	{
		if (id != null)
		{
			model.addAttribute("dto", this.scheduleJobService.selectByPrimaryKey(id));
		}
		return "quartz/list";
	}
	
	@RequestMapping(value = "/save")
	@ResponseBody
	public AjaxJson save(@ModelAttribute(value = "dto") ScheduleJobEntity dto) throws Exception
	{
		return this.scheduleJobService.saveOrUpdate(dto);
	}
	
	/**
	 * 
	 * @Title: enable
	 * @Description: 启用
	 * @param @param id
	 * @param @return
	 * @param @throws Exception    参数
	 * @return AjaxJson    返回类型
	 */
	@RequestMapping(value = "/operation")
	@ResponseBody
	public AjaxJson operation(Integer id,String cmd) throws Exception
	{
		return this.scheduleJobService.updateJobState(id,cmd);
	}
	

	
}

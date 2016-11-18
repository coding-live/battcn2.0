package com.battcn.platform.service.quartz.impl;

import java.util.List;

import javax.annotation.PostConstruct;

import org.quartz.SchedulerException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.battcn.framework.quartz.SchedulerFactory;
import com.battcn.platform.entity.AjaxJson;
import com.battcn.platform.entity.DataGrid;
import com.battcn.platform.entity.quartz.ScheduleJobEntity;
import com.battcn.platform.mapper.quartz.ScheduleJobMapper;
import com.battcn.platform.service.BaseService;
import com.battcn.platform.service.quartz.ScheduleJobService;
import com.github.pagehelper.PageInfo;

/**
 * @ClassName: ScheduleJobServiceImpl
 * @Description:
 * @author 唐亚峰
 * @date 2016年11月18日
 */
@Service
public class ScheduleJobServiceImpl extends BaseService<ScheduleJobEntity> implements ScheduleJobService
{
	public final Logger log = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private SchedulerFactory schedulerFactory;
	
	@Autowired
	private ScheduleJobMapper scheduleJobMapper;

	@Override
	public PageInfo<ScheduleJobEntity> queryScheduleJobForList(DataGrid grid)
	{
		return super.queryForDataGrid(grid);
	}

	@Override
	public AjaxJson saveOrUpdate(ScheduleJobEntity entity)
	{
		AjaxJson json = new AjaxJson();
		if (entity.getId() != null)
		{
			// 修改
		} else
		{
			// 添加
		}
		json.setSuccess(true);
		json.setMsg("保存成功！");
		return json;
	}

	@Override
	public ScheduleJobEntity selectByPrimaryKey(Integer id)
	{
		return super.selectByPrimaryKey(id);
	}

	@Override
	public AjaxJson updateJobState(Integer id, String cmd) throws SchedulerException
	{
		AjaxJson json = new AjaxJson();
		ScheduleJobEntity job = selectByPrimaryKey(id);
		if (job == null)
		{
			json.setMsg("未找到该任务!!!");
		} else
		{
			if ("stop".equals(cmd))
			{
				schedulerFactory.deleteJob(job);
				job.setJobStatus(ScheduleJobEntity.STATUS_NOT_RUNNING);
			} else if ("start".equals(cmd))
			{
				job.setJobStatus(ScheduleJobEntity.STATUS_RUNNING);
				schedulerFactory.addJob(job);
			}
			scheduleJobMapper.updateByPrimaryKeySelective(job);
		}
		json.setSuccess(true);
		return json;
	}
	
	
	@PostConstruct
	public void init() throws Exception
	{
		// 这里获取任务信息数据
		List<ScheduleJobEntity> lists = this.scheduleJobMapper.selectAll();
		if (lists != null && lists.size() > 0)
		{
			for (ScheduleJobEntity job : lists)
			{
				schedulerFactory.addJob(job);
			}
		}
	}

	

}

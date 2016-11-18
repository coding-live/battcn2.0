package com.battcn.framework.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.battcn.platform.entity.quartz.ScheduleJobEntity;

/**
 * 
 * @Description: 计划任务执行处 无状态
 * @author 唐亚峰
 * @date 2016-11-18
 */
public class QuartzJobFactory implements Job
{

	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException
	{
		ScheduleJobEntity scheduleJob = (ScheduleJobEntity) context.getMergedJobDataMap().get("scheduleJob");
		QuartzJobUtils.invokMethod(scheduleJob);
	}
}
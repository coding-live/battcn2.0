package com.battcn.framework.quartz;

import org.quartz.DisallowConcurrentExecution;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.battcn.platform.entity.quartz.ScheduleJobEntity;

/**
 * 
 * @Description: 若一个方法一次执行不完下次轮转时则等待改方法执行完后才执行下一次操作
 * @author 唐亚峰
 * @date 2016-11-18
 */
@DisallowConcurrentExecution
public class QuartzJobFactoryDisallowConcurrentExecution implements Job
{
	@Override
	public void execute(JobExecutionContext context) throws JobExecutionException
	{
		ScheduleJobEntity scheduleJob = (ScheduleJobEntity) context.getMergedJobDataMap().get("scheduleJob");
		QuartzJobUtils.invokMethod(scheduleJob);
	}
}
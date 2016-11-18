package com.battcn.framework.quartz;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import org.quartz.CronScheduleBuilder;
import org.quartz.CronTrigger;
import org.quartz.Job;
import org.quartz.JobBuilder;
import org.quartz.JobDetail;
import org.quartz.JobExecutionContext;
import org.quartz.JobKey;
import org.quartz.Scheduler;
import org.quartz.SchedulerException;
import org.quartz.Trigger;
import org.quartz.TriggerBuilder;
import org.quartz.TriggerKey;
import org.quartz.impl.matchers.GroupMatcher;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.SchedulerFactoryBean;
import org.springframework.stereotype.Component;

import com.battcn.platform.entity.quartz.ScheduleJobEntity;

/**
 * @ClassName: SchedulerUtils
 * @Description: 动态改变定时任务的封装工厂类
 * @author 唐亚峰
 * @date 2016年11月18日
 */
@Component
public class SchedulerFactory
{
	public final Logger logger = LoggerFactory.getLogger(this.getClass());

	@Autowired
	private SchedulerFactoryBean schedulerFactoryBean;

	/**
	 * 删除一个job
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void deleteJob(ScheduleJobEntity job) throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		logger.debug("[删除任务] - [name:{}] - [group:{}]", job.getJobName(), job.getJobGroup());
		JobKey jobKey = JobKey.jobKey(job.getJobName(), job.getJobGroup());
		scheduler.deleteJob(jobKey);
	}

	/**
	 * 立即执行job
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void runAJobNow(ScheduleJobEntity scheduleJob) throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		JobKey jobKey = JobKey.jobKey(scheduleJob.getJobName(), scheduleJob.getJobGroup());
		scheduler.triggerJob(jobKey);
	}

	/**
	 * 暂停一个job
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void pauseJob(ScheduleJobEntity scheduleJob) throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		JobKey jobKey = JobKey.jobKey(scheduleJob.getJobName(), scheduleJob.getJobGroup());
		scheduler.pauseJob(jobKey);
	}

	/**
	 * 恢复一个job
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void resumeJob(ScheduleJobEntity scheduleJob) throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		JobKey jobKey = JobKey.jobKey(scheduleJob.getJobName(), scheduleJob.getJobGroup());
		scheduler.resumeJob(jobKey);
	}

	/**
	 * 更新job时间表达式
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void updateJobCron(ScheduleJobEntity scheduleJob) throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();

		TriggerKey triggerKey = TriggerKey.triggerKey(scheduleJob.getJobName(), scheduleJob.getJobGroup());

		CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);

		CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(scheduleJob.getCronExpression());

		trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();

		scheduler.rescheduleJob(triggerKey, trigger);
	}

	/**
	 * 添加任务
	 * 
	 * @param scheduleJob
	 * @throws SchedulerException
	 */
	public void addJob(ScheduleJobEntity job) throws SchedulerException
	{
		if (job == null || !(ScheduleJobEntity.STATUS_RUNNING == job.getJobStatus()))
		{
			return;
		}
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		logger.debug("[添加任务] - [name:{}] - [method:{}]", job.getJobName(), job.getMethodName());
		TriggerKey triggerKey = TriggerKey.triggerKey(job.getJobName(), job.getJobGroup());
		CronTrigger trigger = (CronTrigger) scheduler.getTrigger(triggerKey);
		// 不存在，创建一个
		if (null == trigger)
		{
			Class<? extends Job> clazz = ScheduleJobEntity.CONCURRENT_IS == job.getIsConcurrent()
					? QuartzJobFactory.class : QuartzJobFactoryDisallowConcurrentExecution.class;
			JobDetail jobDetail = JobBuilder.newJob(clazz).withIdentity(job.getJobName(), job.getJobGroup()).build();
			jobDetail.getJobDataMap().put("scheduleJob", job);
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(job.getCronExpression());
			trigger = TriggerBuilder.newTrigger().withIdentity(job.getJobName(), job.getJobGroup())
					.withSchedule(scheduleBuilder).build();
			scheduler.scheduleJob(jobDetail, trigger);
		} else
		{
			// Trigger已存在，那么更新相应的定时设置
			CronScheduleBuilder scheduleBuilder = CronScheduleBuilder.cronSchedule(job.getCronExpression());
			// 按新的cronExpression表达式重新构建trigger
			trigger = trigger.getTriggerBuilder().withIdentity(triggerKey).withSchedule(scheduleBuilder).build();
			// 按新的trigger重新设置job执行
			scheduler.rescheduleJob(triggerKey, trigger);
		}
	}

	/**
	 * 获取所有计划中的任务列表
	 * 
	 * @return
	 * @throws SchedulerException
	 */
	public List<ScheduleJobEntity> getAllJob() throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		GroupMatcher<JobKey> matcher = GroupMatcher.anyJobGroup();
		Set<JobKey> jobKeys = scheduler.getJobKeys(matcher);
		List<ScheduleJobEntity> jobList = new ArrayList<ScheduleJobEntity>();
		for (JobKey jobKey : jobKeys)
		{
			List<? extends Trigger> triggers = scheduler.getTriggersOfJob(jobKey);
			for (Trigger trigger : triggers)
			{
				ScheduleJobEntity job = new ScheduleJobEntity();
				job.setJobName(jobKey.getName());
				job.setJobGroup(jobKey.getGroup());
				Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());
				job.setDescription("触发器:" + trigger.getKey() + " 状态" + triggerState.name());
				if (trigger instanceof CronTrigger)
				{
					CronTrigger cronTrigger = (CronTrigger) trigger;
					String cronExpression = cronTrigger.getCronExpression();
					job.setCronExpression(cronExpression);
				}
				jobList.add(job);
			}
		}
		return jobList;
	}

	/**
	 * 所有正在运行的job
	 * 
	 * @return
	 * @throws SchedulerException
	 */
	public List<ScheduleJobEntity> getRunningJob() throws SchedulerException
	{
		Scheduler scheduler = schedulerFactoryBean.getScheduler();
		List<JobExecutionContext> executingJobs = scheduler.getCurrentlyExecutingJobs();
		List<ScheduleJobEntity> jobList = new ArrayList<ScheduleJobEntity>(executingJobs.size());
		for (JobExecutionContext executingJob : executingJobs)
		{
			ScheduleJobEntity job = new ScheduleJobEntity();
			JobDetail jobDetail = executingJob.getJobDetail();
			JobKey jobKey = jobDetail.getKey();
			Trigger trigger = executingJob.getTrigger();
			job.setJobName(jobKey.getName());
			job.setJobGroup(jobKey.getGroup());
			Trigger.TriggerState triggerState = scheduler.getTriggerState(trigger.getKey());
			job.setDescription("触发器:" + trigger.getKey() + " 状态" + triggerState.name());
			if (trigger instanceof CronTrigger)
			{
				CronTrigger cronTrigger = (CronTrigger) trigger;
				String cronExpression = cronTrigger.getCronExpression();
				job.setCronExpression(cronExpression);
			}
			jobList.add(job);
		}
		return jobList;
	}

}

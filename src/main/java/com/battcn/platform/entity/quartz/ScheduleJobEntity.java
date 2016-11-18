package com.battcn.platform.entity.quartz;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 
 * @Description: 计划任务信息
 * @author snailxr
 * @date 2014年6月6日 下午10:49:43
 */
@Table(name = "t_sys_schedule_job")
public class ScheduleJobEntity
{
	public static final Integer STATUS_RUNNING = 1;
	public static final Integer STATUS_NOT_RUNNING = 0;
	public static final Integer CONCURRENT_IS = 1;
	public static final Integer CONCURRENT_NOT = 0;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id", unique = true, nullable = false)
	private Integer id;
	@Column(name = "createTime")
	private Date createTime;
	@Column(name = "updateTime")
	private Date updateTime;
	/**
	 * 任务名称
	 */
	@Column(name = "jobName")
	private String jobName;
	/**
	 * 任务分组
	 */
	@Column(name = "jobGroup")
	private String jobGroup;
	/**
	 * 任务状态 是否启动任务
	 */
	@Column(name = "jobStatus")
	private Integer jobStatus;
	/**
	 * cron表达式
	 */
	@Column(name = "cronExpression")
	private String cronExpression;
	/**
	 * 描述
	 */
	@Column(name = "description")
	private String description;
	/**
	 * 任务执行时调用哪个类的方法 包名+类名
	 */
	@Column(name = "beanClass")
	private String beanClass;
	/**
	 * 任务是否有状态
	 */
	@Column(name = "isConcurrent")
	private Integer isConcurrent;
	/**
	 * spring bean
	 */
	@Column(name = "springId")
	private String springId;
	/**
	 * 任务调用的方法名
	 */
	@Column(name = "methodName")
	private String methodName;

	public Integer getId()
	{
		return id;
	}

	public void setJobId(Integer id)
	{
		this.id = id;
	}

	public Date getCreateTime()
	{
		return createTime;
	}

	public void setCreateTime(Date createTime)
	{
		this.createTime = createTime;
	}

	public Date getUpdateTime()
	{
		return updateTime;
	}

	public void setUpdateTime(Date updateTime)
	{
		this.updateTime = updateTime;
	}

	public String getJobName()
	{
		return jobName;
	}

	public void setJobName(String jobName)
	{
		this.jobName = jobName;
	}

	public String getJobGroup()
	{
		return jobGroup;
	}

	public void setJobGroup(String jobGroup)
	{
		this.jobGroup = jobGroup;
	}

	public Integer getJobStatus()
	{
		return jobStatus;
	}

	public void setJobStatus(Integer jobStatus)
	{
		this.jobStatus = jobStatus;
	}

	public String getCronExpression()
	{
		return cronExpression;
	}

	public void setCronExpression(String cronExpression)
	{
		this.cronExpression = cronExpression;
	}

	public String getDescription()
	{
		return description;
	}

	public void setDescription(String description)
	{
		this.description = description;
	}

	public String getBeanClass()
	{
		return beanClass;
	}

	public void setBeanClass(String beanClass)
	{
		this.beanClass = beanClass;
	}

	public Integer getIsConcurrent()
	{
		return isConcurrent;
	}

	public void setIsConcurrent(Integer isConcurrent)
	{
		this.isConcurrent = isConcurrent;
	}

	public String getSpringId()
	{
		return springId;
	}

	public void setSpringId(String springId)
	{
		this.springId = springId;
	}

	public String getMethodName()
	{
		return methodName;
	}

	public void setMethodName(String methodName)
	{
		this.methodName = methodName;
	}
}
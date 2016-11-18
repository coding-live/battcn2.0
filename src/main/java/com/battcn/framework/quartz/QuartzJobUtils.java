package com.battcn.framework.quartz;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.battcn.platform.entity.quartz.ScheduleJobEntity;
import com.battcn.util.spring.AppContextUtil;

public class QuartzJobUtils
{
	public final static Logger log = LoggerFactory.getLogger(QuartzJobUtils.class);

	/**
	 * 通过反射调用scheduleJob中定义的方法
	 * 
	 * @param scheduleJob
	 */
	public static void invokMethod(ScheduleJobEntity scheduleJob)
	{
		Object object = null;
		Class<?> clazz = null;
		if (StringUtils.isNotBlank(scheduleJob.getSpringId()))
		{
			object = AppContextUtil.getBean(scheduleJob.getSpringId());
		} else if (StringUtils.isNotBlank(scheduleJob.getBeanClass()))
		{
			try
			{
				clazz = Class.forName(scheduleJob.getBeanClass());
				object = clazz.newInstance();
			} catch (Exception e)
			{
				e.printStackTrace();
			}
		}
		if (object == null)
		{
			log.error("[任务名称] - [{}] [未启动成功,请检查是否配置正确!!!]",scheduleJob.getJobName());
			return;
		}
		clazz = object.getClass();
		Method method = null;
		try
		{
			method = clazz.getDeclaredMethod(scheduleJob.getMethodName());
		} catch (NoSuchMethodException e)
		{
			log.error("[任务名称] - [{}] [未启动成功,方法名设置错误!!!]",scheduleJob.getJobName());
		} catch (SecurityException e)
		{
			e.printStackTrace();
		}
		if (method != null)
		{
			try
			{
				method.invoke(object);
			} catch (IllegalAccessException e)
			{
				e.printStackTrace();
			} catch (IllegalArgumentException e)
			{
				e.printStackTrace();
			} catch (InvocationTargetException e)
			{
				e.printStackTrace();
			}
		}
		log.info("[任务名称] - [{}] [启动成功!!!]",scheduleJob.getJobName());
	}
}

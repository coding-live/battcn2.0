package com.battcn.platform.task;

import java.util.Date;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Component;

@Component
public class TaskTest
{
	public final Logger log = Logger.getLogger(this.getClass());

	
	public void run1()
	{
		for (int i = 0; i < 1; i++)
		{
			log.debug(i + " run1......................................" + (new Date()));
		}

	}

	public void run2()
	{
		for (int i = 0; i < 1; i++)
		{
			log.debug(i + " run2......................................" + (new Date()));
		}
	}
	
	public void run3()
	{
		for (int i = 0; i < 1; i++)
		{
			log.debug(i + " run3......................................" + (new Date()));
		}

	}

}

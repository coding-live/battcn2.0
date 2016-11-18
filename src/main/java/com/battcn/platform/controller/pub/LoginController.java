package com.battcn.platform.controller.pub;

import java.io.InputStreamReader;
import java.sql.DriverManager;
import java.util.Properties;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.jdbc.ScriptRunner;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.battcn.framework.redis.RedisOperator;
import com.battcn.platform.cache.SecondLevelCached;
import com.battcn.platform.constant.Constant;
import com.battcn.platform.entity.pub.ManagerEntity;
import com.battcn.platform.service.pub.MenuService;
import com.battcn.util.SessionUtil;
import com.mysql.jdbc.Connection;

import springfox.documentation.annotations.ApiIgnore;

@Controller
@ApiIgnore
public class LoginController
{
	
	@Resource(name = "redisOperator")
	private RedisOperator redisOperator;
	private static final int CACHE_DB_INDEX = SecondLevelCached.CACHED_DB_INDEX_CODE_GENERATOR;
	private static final String CACHE_DB_KEY = SecondLevelCached.SYS_MANAGER_KEY_GENERATOR;
	
	@Autowired
	MenuService menuService;

	@RequestMapping(value = "login", method = RequestMethod.GET, produces = "text/html; charset=utf-8")
	public String login(HttpServletRequest request)
	{
		return "login";
	}

	@RequestMapping("main")
	public String main()
	{
		return "main";
	}

	@RequestMapping("index")
	public String index(Model model, HttpServletRequest request)
	{
		model.addAttribute("list",menuService.listTree(SessionUtil.getSession()));
		return "index";
	}

	@RequestMapping(value = "login", method = RequestMethod.POST, produces = "text/html; charset=utf-8")
	public String login(HttpServletRequest request,
			HttpServletResponse response, ManagerEntity dto)
	{
		// 想要得到 SecurityUtils.getSubject() 的对象．．访问地址必须跟shiro的拦截地址内．不然后会报空指针
		Subject sub = SecurityUtils.getSubject();
		// 用户输入的账号和密码,,存到UsernamePasswordToken对象中..然后由shiro内部认证对比,
		// 认证执行者交由ShiroDbRealm中doGetAuthenticationInfo处理
		// 当以上认证成功后会向下执行,认证失败会抛出异常
		UsernamePasswordToken token = new UsernamePasswordToken(dto.getAccount(), dto.getPassword());
		try
		{
			sub.login(token);
		} catch (LockedAccountException lae)
		{
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE",Constant.LOGIN_ERROR_CODE_100002);
			request.setAttribute("LOGIN_ERROR_MESSAGE",Constant.LOGIN_ERROR_MESSAGE_SYSTEMERROR);
			return "login";
		} catch (ExcessiveAttemptsException e)
		{
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE",Constant.LOGIN_ERROR_CODE_100003);
			request.setAttribute("LOGIN_ERROR_MESSAGE","账号：" + dto.getName()+ Constant.LOGIN_ERROR_MESSAGE_MAXERROR);
			return "login";
		} catch (AuthenticationException e)
		{
			token.clear();
			request.setAttribute("LOGIN_ERROR_CODE",Constant.LOGIN_ERROR_CODE_100001);
			request.setAttribute("LOGIN_ERROR_MESSAGE",	Constant.LOGIN_ERROR_MESSAGE_USERERROR);
			return "login";
		}
		return "redirect:/index";
	}


	@RequestMapping("denied")
	public String denied()
	{
		return "denied";
	}

	@RequestMapping("install")
	public String install() throws Exception
	{
		try
		{
			Properties props = Resources.getResourceAsProperties("jdbc.properties");
			String url = props.getProperty("database.url");
			String driver = props.getProperty("database.driverClassName");
			String username = props.getProperty("database.username");
			String password = props.getProperty("database.password");
			Class.forName(driver).newInstance();
			Connection conn = (Connection) DriverManager.getConnection(url,username, password);
			ScriptRunner runner = new ScriptRunner(conn);
			runner.setErrorLogWriter(null);
			runner.setLogWriter(null);
			runner.runScript((new InputStreamReader(getClass().getResourceAsStream("/intall.sql"), "UTF-8")));
			
			
			System.out.println("init - redis - method");
			String tableJson = "{\"byUser\":\"levin\",\"content\":\"Users\",\"processorClass\":\"Users\",\"uuid\":\"DDD961BC7A0A3A4BFA001C51DE229CF3\",\"tablePrefix\":\"T_SYS_\",\"upPackage\":\"users\"}";
			String column1 = "{\"attributeName\":\"name\",\"uuid\":\"0D972CF0BB5C1E70EEDE7DCB627B8A95\",\"modifyDate\":1477197466979,\"defaultVal\":\"唐亚峰\",\"attributeType\":\"1\",\"remake\":\"名字\"}";
			String column2 = "{\"attributeName\":\"age\",\"uuid\":\"AA3C2EEC150B9F1B23E488C4D770898D\",\"modifyDate\":1477197466979,\"defaultVal\":\"20\",\"attributeType\":\"2\",\"remake\":\"年龄\"}";
			String column3 = "{\"attributeName\":\"image\",\"uuid\":\"218EDCBEC9272A7EFD1F55D76B9E2352\",\"modifyDate\":1477197466979,\"defaultVal\":\"头像\",\"attributeType\":\"1\",\"remake\":\"头像\"}";
			String tid = "DDD961BC7A0A3A4BFA001C51DE229CF3";
			if(redisOperator!=null)
			{
				redisOperator.hset(CACHE_DB_KEY, tid, tableJson, CACHE_DB_INDEX);
				redisOperator.hset(tid, "0D972CF0BB5C1E70EEDE7DCB627B8A95", column1, CACHE_DB_INDEX);
				redisOperator.hset(tid, "AA3C2EEC150B9F1B23E488C4D770898D", column2, CACHE_DB_INDEX);
				redisOperator.hset(tid, "218EDCBEC9272A7EFD1F55D76B9E2352", column3, CACHE_DB_INDEX);
			}
			
		} catch (Exception e)
		{
			e.printStackTrace();
			return "初始化失败！请联系管理员" + e;
		}
		return "install";
	}
}

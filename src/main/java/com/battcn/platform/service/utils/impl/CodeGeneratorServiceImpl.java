package com.battcn.platform.service.utils.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Service;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.battcn.framework.redis.RedisOperator;
import com.battcn.platform.cache.SecondLevelCached;
import com.battcn.platform.entity.AjaxJson;
import com.battcn.platform.entity.code.CodeColumnEntity;
import com.battcn.platform.entity.code.CodeTableEntity;
import com.battcn.platform.service.utils.CodeGeneratorService;
import com.battcn.util.generator.FileUtil;
import com.battcn.util.generator.Freemarker;
import com.battcn.util.generator.PathUtil;

/**
 * @ClassName: CreateCodeServiceImpl
 * @Description:修改了删除CodeColumnEntity和修改了删除CodeTableEntity以及增加了生成实体类生成map以及xml
 * @author 唐亚峰,江雪立
 * @date 2016年11月4日
 */
@Service
public class CodeGeneratorServiceImpl implements CodeGeneratorService
{
	@Resource(name = "redisOperator")
	private RedisOperator redisOperator;
	private static final int CACHE_DB_INDEX = SecondLevelCached.CACHED_DB_INDEX_CODE_GENERATOR;
	private static final String CACHE_DB_KEY = SecondLevelCached.SYS_MANAGER_KEY_GENERATOR;

	@Override
	public List<?> queryCodeForList(String tid)
	{
		if (StringUtils.isNotBlank(tid))
		{
			if ("false".equals(tid))
				return null;
			List<CodeColumnEntity> codeList = new ArrayList<CodeColumnEntity>();
			Map<String, String> list = redisOperator.hgetAll(tid, CACHE_DB_INDEX);
			JSONObject obj = null;
			CodeColumnEntity column = null;
			if (list != null && list.size() > 0)
			{
				for (String str : list.values())
				{
					obj = JSON.parseObject(str);
					column = new CodeColumnEntity();
					column.setAttributeName(obj.getString("attributeName"));
					column.setAttributeType(obj.getString("attributeType"));
					column.setDefaultVal(obj.getString("defaultVal"));
					column.setModityDate(obj.getDate("modifyDate"));
					column.setRemake(obj.getString("remake"));
					column.setUuid(obj.getString("uuid"));
					codeList.add(column);
				}
			}
			return codeList;
		} else
		{
			List<CodeTableEntity> codeList = new ArrayList<CodeTableEntity>();
			Map<String, String> list = redisOperator.hgetAll(CACHE_DB_KEY, CACHE_DB_INDEX);
			if (list != null && list.size() > 0)
			{
				for (String str : list.values())
				{
					codeList.add(JSON.parseObject(str, CodeTableEntity.class));
				}
			}
			return codeList;
		}
	}

	@Override
	public CodeTableEntity getCodeTableByUUID(String uuid)
	{
		String json = redisOperator.hget(CACHE_DB_KEY, uuid, CACHE_DB_INDEX);
		return JSON.parseObject(json, CodeTableEntity.class);
	}

	@Override
	public CodeColumnEntity getCodeColumnByUUID(String tid, String cid)
	{
		String json = redisOperator.hget(tid, cid, CACHE_DB_INDEX);
		return JSON.parseObject(json, CodeColumnEntity.class);
	}

	@Override
	public AjaxJson delete(String[] ids, String tid, String cid)
	{
		AjaxJson json = new AjaxJson();

		if (ids != null && ids.length > 0)
		{
			for (String str : ids)
			{
				redisOperator.hdel(CACHE_DB_KEY, str, CACHE_DB_INDEX);
			}
			json.setSuccess(true);
			json.setMsg("删除成功！");
		} else
		{
			if (StringUtils.isNotEmpty(tid) && StringUtils.isNotEmpty(cid))
			{
				redisOperator.hdel(tid, cid, CACHE_DB_INDEX);
				json.setSuccess(true);
				json.setMsg("删除成功！");
			}
		}
		return json;
	}

	@Override
	public AjaxJson saveOrUpdateColumn(String tid, CodeColumnEntity column)
	{
		AjaxJson ajaxJson = new AjaxJson();
		try
		{
			if (column != null)
			{
				column.setModityDate(new Date());
				JSONObject json = (JSONObject) JSON.toJSON(column);
				redisOperator.hset(tid, column.getUuid(), json.toJSONString(), CACHE_DB_INDEX);
				ajaxJson.setMsg("添加成功");
				ajaxJson.setSuccess(true);
			}
		} catch (Exception e)
		{
			ajaxJson.setMsg("系统异常");
			ajaxJson.setSuccess(false);
		}
		
		return ajaxJson;
	}

	@Override
	public AjaxJson saveOrUpdate(CodeTableEntity table)
	{
		AjaxJson ajaxJson = new AjaxJson();
		try
		{
			if (table != null)
			{
				JSONObject json = (JSONObject) JSON.toJSON(table);
				redisOperator.hset(CACHE_DB_KEY, table.getUuid(), json.toJSONString(), CACHE_DB_INDEX);
				ajaxJson.setMsg("添加成功");
				ajaxJson.setSuccess(true);
			}
		} catch (Exception e)
		{
			ajaxJson.setMsg("系统异常");
			ajaxJson.setSuccess(false);
		}
		return ajaxJson;
	}

	
	@PostConstruct
	public void init()
	{
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
	}
	

	@Override
	public void generateCode(HttpServletResponse response, String uuid) throws Exception
	{
		CodeTableEntity code = getCodeTableByUUID(uuid);
		String upPack = code.getUpPackage();
		String proClass = code.getProcessorClass();
		String tablePre = code.getTablePrefix();
		String user = code.getByUser();
		String content = code.getContent();
		Map<String, Object> root = new HashMap<String, Object>(); // 创建数据模型
		Map<String, String> list = redisOperator.hgetAll(uuid, CACHE_DB_INDEX);
		List<CodeColumnEntity> codeList = new ArrayList<CodeColumnEntity>();
		List<CodeColumnEntity> entityList = new ArrayList<CodeColumnEntity>();

		String properties="";
		String neibu="";
		for (String str : list.values())
		{
			codeList.add(JSON.parseObject(str, CodeColumnEntity.class));
			entityList.add(JSON.parseObject(str, CodeColumnEntity.class));
		}

		for (CodeColumnEntity entity :entityList){
			entity.setAttributeName(com.battcn.util.StringUtils.replaceUnderlineAndfirstToUpper(entity.getAttributeName(),"_",""));
			neibu=neibu+"\t\tthis."+entity.getAttributeName()+"="+entity.getAttributeName()+";\n";
			if(entity.getAttributeType().equals("1") ){
				String key = "String  "+entity.getAttributeName();
				if(properties!=""){
				properties=properties+","+key;
				}
				else{
					properties=properties+key;

				}
			}
			else if (entity.getAttributeType().equals("2")){
				String key = "Double  "+entity.getAttributeName();
				if(properties!=""){
					properties=properties+","+key;}
				else{
					properties=properties+key;

				}
			}
			else if (entity.getAttributeType().equals("3")){
				String key = "Integer  "+entity.getAttributeName();
				if(properties!=""){
					properties=properties+","+key;}
				else{
					properties=properties+key;

				}

			}
		}
		String constmain =  "public "+proClass+"Entity("+properties+")\n" +
				"{\n"+
					neibu+
				"}";

		System.out.println(constmain);
		root.put("fieldList", codeList);
		root.put("entityList",entityList);
		root.put("upPack", upPack); // 包名
		root.put("proClass", proClass); // 类名
		String lower = proClass.toLowerCase();
		String upper = proClass.toUpperCase();
		root.put("proClassLower", lower); // 类名(全小写)
		root.put("proClassUpper", upper); // 类名(全大写)
		root.put("tablePre", tablePre); // 表前缀
		root.put("nowDate", new Date()); // 当前日期
		root.put("user", user); // 生成人
		root.put("content", content); // 生成人人
		root.put("constmain",constmain);//组装构造
		// root.put("OP.menu", "OP.menu"); // 当前日期

		/**
		 * =====================================================================
		 */
		String filePath = "generator/code/"; // 存放路径
		String ftlPath = "createCode"; // ftl路径

		FileUtil.delFolder(PathUtil.getClasspath() + filePath); // 生成代码前,先清空之前生成的代码
		/* 生成entity */
		Freemarker.printFile("entityTemplate.ftl",root,"entity/"+upPack+"/"+proClass+"Entity.java",filePath,ftlPath);
		/* 生成controller */
		Freemarker.printFile("controllerTemplate.ftl", root,
				"controller/" + upPack + "/" + proClass + "Controller.java", filePath, ftlPath);
		/*生成mapper */
		Freemarker.printFile("mapperTemplate.ftl", root,
				"mapper/" + upPack + "/" + proClass + "Mapper.java", filePath, ftlPath);
		/*生成mapper.xml */
		Freemarker.printFile("mapperXmlTemplate.ftl", root,
				"mapper/"+ proClass + "Mapper.xml", filePath, ftlPath);
		/* 生成service */
		Freemarker.printFile("serviceTemplate.ftl", root, "service/" + upPack + "/" + proClass + "Service.java",
				filePath, ftlPath);

		/* 生成serviceImpl */
		Freemarker.printFile("serviceTemplateImpl.ftl", root,
				"service/" + upPack + "/impl/" + proClass + "ServiceImpl.java", filePath, ftlPath);

		/* 生成SQL脚本 */
		Freemarker.printFile("mysql_SQL_Template.ftl", root, "mysql脚本/" + tablePre + upper + ".sql", filePath, ftlPath);
		Freemarker.printFile("oracle_SQL_Template.ftl", root, "oracle脚本/" + tablePre + upper + ".sql", filePath,
				ftlPath);

		/* 生成jsp页面 */
		Freemarker.printFile("list_Template.ftl", root, "views/" + upPack + "/" + "list.jsp", filePath, ftlPath);
		Freemarker.printFile("edit_Template.ftl", root, "views/" + upPack + "/" + "edit.jsp", filePath, ftlPath);

		/* 生成的全部代码压缩成zip文件 */
		FileUtil.zip(PathUtil.getClasspath() + filePath, PathUtil.getClasspath() + filePath + proClass + "Code.zip");

		/* 下载代码 */
		FileUtil.fileDownload(response, PathUtil.getClasspath() + filePath + proClass + "Code.zip",proClass + "Code.zip");
	}

}

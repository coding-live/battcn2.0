package com.battcn.platform.service.${upPack};

import java.util.List;
import com.battcn.platform.entity.DataGrid;
import com.github.pagehelper.PageInfo;
import com.battcn.platform.entity.AjaxJson;
import com.battcn.platform.entity.${proClass}Entity;


/**
 * 
 * @ClassName: ${proClass}Service 
 * @Description: 代码生成器生成的接口文件
 * @author ${user}
 * @date ${nowDate?string("yyyy-MM-dd")}
 */
public interface ${proClass}Service 
{
    /**
    * 查询所有数据
    * @param grid
    * @param dto
    */
	PageInfo<${proClass}Entity> query${proClass}ForList(DataGrid grid,${proClass}Entity dto);
    /**
    * 查询单条数据
    * @param key
    */
	${proClass}Entity selectByPrimaryKey(Object key);
    /**
    * 删除单条或删除多条
    * @param ids
    */
	AjaxJson batchDelete(Object[] ids);
    /**
    * 增加或修改数据
    * @param dto
    */
	AjaxJson saveOrUpdate(${proClass}Entity dto);
}


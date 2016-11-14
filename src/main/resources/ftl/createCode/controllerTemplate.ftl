package com.battcn.platform.controller.${upPack};

import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.battcn.platform.controller.BaseController;
import com.battcn.platform.entity.AjaxJson;
import com.battcn.platform.entity.DataGrid;
import com.github.pagehelper.PageInfo;
import com.battcn.platform.entity.${upPack}.${proClass}Entity;
import com.battcn.platform.service.${upPack}.${proClass}Service;

/**
 * @ClassName:${proClass}Controller
 * @author:${user}
 * @Description: ${content}
 * @date:${nowDate?string("yyyy-MM-dd")}
 */
@Controller
@RequestMapping(value="/${proClassLower}")
public class ${proClass}Controller extends BaseController {
	
	@Resource ${proClass}Service ${proClassLower}Service;
	/**
	* 请求列表页
	* @param model
	* @return ${upPack}/list.jsp
	*/
	@RequestMapping(value = "/list")
	public String list(Model model)
	{
		return "${upPack}/list";
	}
	/**
	* 修改请求，model接受查询数据并返回到页面
	* @param model
	* @param id
	* @return ${upPack}/edit.jsp
	*/
	@RequestMapping(value = "/edit")
	public String edit(Object id, Model model)
	{
		if (id != null)
		{
			model.addAttribute("dto", this.${proClassLower}Service.selectByPrimaryKey(id));
		}
		return "${upPack}/edit";
	}
	/**
	* ajax请求查询所有。通过PageIfo翻页
	* @param grid
	* @param dto
	* @return this.${proClassLower}Service.query${proClass}ForList(grid,dto)
	*/
	@RequestMapping(value = "/query")
	@ResponseBody
	public PageInfo<${proClass}Entity> query(DataGrid grid,${proClass}Entity dto)
	{
		return this.${proClassLower}Service.query${proClass}ForList(grid,dto);
	}
    /**
    * 添加数据
    * @param dto
    * @return true或false
	* @throws 添加失败
    */
	@RequestMapping(value = "/save")
	@ResponseBody
	public AjaxJson save(${proClass}Entity dto) throws Exception
	{
		return this.${proClassLower}Service.save(dto);
	}
    /**
    * 删除数据，可批量删除可单条删除
    * @param ids
    * @return true或false
    */
	@RequestMapping(value = "/remove")
	@ResponseBody
	public AjaxJson del(Object[] ids)
	{
		return this.${proClassLower}Service.batchDelete(ids);
	}
}

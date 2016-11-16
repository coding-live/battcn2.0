package com.battcn.platform.controller.pub;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.alibaba.fastjson.JSONObject;
import com.battcn.platform.entity.pub.ManagerEntity;
import com.battcn.platform.service.pub.ManagerService;
import com.battcn.util.SessionUtil;
import com.battcn.util.http.ResponseUtils;
import com.battcn.util.upload.FileRepository;
import com.battcn.util.upload.UploadUtils;

/**
 * @ClassName: ProfileController
 * @Description:
 * @author 唐亚峰
 * @date 2016年11月16日
 */
@Controller
@RequestMapping
public class ProfileController
{

	@Autowired
	private ManagerService managerService;
	@Autowired
	private FileRepository fileRepository;

	@RequestMapping("profile")
	public String profile()
	{
		return "profile";
	}

	@RequestMapping(value = "/upload")
	public void upload(MultipartHttpServletRequest request,
			@RequestParam(value = "__source", required = false) MultipartFile file3, HttpServletResponse response,
			ModelMap model) throws IOException
	{
		Result result = new Result();
		MultipartFile file = null;
		Map<String, MultipartFile> file2 = request.getFileMap();
		String path = "";
		for (Map.Entry<String, MultipartFile> entry : file2.entrySet())
		{
			file = entry.getValue();
		}
		if (file == null || file.isEmpty())
		{
			result.msg = "文件太小!";
		} else
		{
			result.success = false;
			result.msg = "上传失败!";
			boolean isSourcePic = file.getName().equals("__source");
			String fieldName = file.getName();// file对象有问题
			if (file3 != null)
			{
				isSourcePic = true;
				fieldName = file3.getOriginalFilename();
				file = file3;
			}
			// 如果是原始图片 file
			// 域的名称或者以默认的头像域名称的部分“__avatar”打头(默认的头像域名称：__avatar1,2,3...，可在插件配置参数中自定义，参数名：avatar_field_names)
			else if (isSourcePic || fieldName.startsWith("__avatar"))
			{
				// 原始图片（默认的 file 域的名称是__source，可在插件配置参数中自定义。参数名：src_field_name）。
				if (isSourcePic)
				{
					// 文件名，如果是本地或网络图片为原始文件名、如果是摄像头拍照则为 *FromWebcam.jpg
					String sourceFileName = fieldName;
					// 原始文件的扩展名(不包含“.”)
					String sourceExtendName = sourceFileName.substring(sourceFileName.lastIndexOf('.') + 1);
					String filename = UploadUtils.generateFilename(sourceExtendName);
					path = "upload" + filename;
				}
				// 头像图片（默认的 file
				// 域的名称：__avatar1,2,3...，可在插件配置参数中自定义，参数名：avatar_field_names）。
				else
				{
					String filename = UploadUtils.generateFilename("jpg");
					path = "upload" + filename;
				}
				fileRepository.storeByFilename(path, file);
			}
		}
		if (path != null)
		{
			result.sourceUrl = request.getContextPath() + "/" +path;
			System.out.println(result.sourceUrl);
			result.success = true;
			result.msg = "上传成功!";
			ManagerEntity userEntity = SessionUtil.getSession();
			userEntity.setPhoto(path);
			this.managerService.update(userEntity);
		}
		ResponseUtils.renderText(response, JSONObject.toJSONString(result));
	}

	/**
	 * 表示上传的结果。
	 */
	@SuppressWarnings("unused")
	private class Result
	{
		/**
		 * 表示图片是否已上传成功。
		 */
		public Boolean success;
		public String userid;
		public String username;

		/**
		 * 自定义的附加消息。
		 */
		public String msg;
		/**
		 * 表示原始图片的保存地址。
		 */
		public String sourceUrl;
	}

}

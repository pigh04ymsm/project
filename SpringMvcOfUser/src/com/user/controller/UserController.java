package com.user.controller;

import javax.annotation.Resource;
import javax.validation.Valid;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.user.model.User;
import com.user.service.IUserService;

/**
 * Controller类，处理增删改查
 * 开始时间：20160517
 * 更新时间：20160520
 * @author hualiu
 *
 */


@Controller
@RequestMapping(value = "/user")
public class UserController {
	
	private IUserService userService;
	
	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}	

	/**
	 * 显示用户信息
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/list")
	public String list(Model model){
		model.addAttribute("users", userService.findAll());
		return "user/userList";
	}
	
	
	/**
	 * 删除用户
	 * @param userName
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String deleteUser(@PathVariable int id, Model model){
		userService.delete(id);
		return "redirect:/user/list";
	}
	
	/**
	 *  点击编辑后，根据用户名提取信息,并跳转到编辑页面userEdit.jsp
	 * @param userName
	 * @param userBean
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String editUser(@PathVariable int id, Model model){
		model.addAttribute(userService.get(id));
		return "user/userEdit";
	}
	

	/**
	 * 修改用户信息
	 * @param userName
	 * @param user
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/update/{id}", method = RequestMethod.POST)
	public String updateUser(@PathVariable int id, @Valid @ModelAttribute("user") User user,BindingResult result){
		 if (result.hasErrors()){
			// model.addAttribute(userService.get(id));
	           /* //遍历错误信息
	            List<ObjectError> errorList = result.getAllErrors();
	            for(ObjectError error : errorList){
	                System.out.println(error.getDefaultMessage());
	            }*/
	            return "user/userEdit";
	      }
		User upduser = userService.get(id);
		upduser.setUserName(user.getUserName());
		upduser.setPassword(user.getPassword());
		upduser.setSex(user.getSex());
		upduser.setAge(user.getAge());
		upduser.setEmail(user.getEmail());
		userService.update(upduser);
		return "redirect:/user/list";
	}
	

	/**
	 * 点击添加按钮后，跳转到添加用户页面userAdd.jsp
	 * @param userBean
	 * @return
	 */
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addUserView(@ModelAttribute("user") User userBean,Model model){
		model.addAttribute(new User());
		return "user/userAdd";
	}
	
	

	/**
	 * 添加用户信息
	 * @param userBean
	 * @param result
	 * @return
	 */
	@RequestMapping(value = "/addCheck", method = RequestMethod.POST)
		public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result){
		
		 if (result.hasErrors()){
			 
			 /*//遍历错误信息
	            List<ObjectError> errorList = result.getAllErrors();
	            for(ObjectError error : errorList){
	                System.out.println(error.getDefaultMessage());
	            }*/
	            return "user/userAdd";
	      }
		 userService.add(user);
		return "redirect:/user/list";
	}
}

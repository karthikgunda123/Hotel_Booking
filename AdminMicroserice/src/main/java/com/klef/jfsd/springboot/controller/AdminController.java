package com.klef.jfsd.springboot.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("admin")
public class AdminController 
{
	@Autowired
	private AdminService adminService;
	
	@GetMapping("")
	@ResponseBody
	public String Main()
	{
		return "Admin Micro Service";
	}
	
	@GetMapping("adminlogin")
	public ModelAndView adminLogin()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("admin");
		return modelAndView;
	}
	
	@PostMapping("checkadminlogin")
	public ModelAndView checkAdminLogin(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String username = request.getParameter("username");
		String password = request.getParameter("pwd");
		Admin admin = adminService.checkAdminLogin(username, password);
		if(admin != null)
		{
			long ccount = adminService.customerCount();
			long mcount = adminService.managerCount();
			modelAndView.setViewName("adminhome");
			modelAndView.addObject("ccount", ccount);
			modelAndView.addObject("mcount", mcount);
		}
		else
		{
			modelAndView.setViewName("admin");
			modelAndView.addObject("message", "Login Failed");
		}
		return modelAndView;
	}
	
	@GetMapping("adminHome")
	public ModelAndView adminHome()
	{
		ModelAndView modelAndView = new ModelAndView();
		long ccount = adminService.customerCount();
		long mcount = adminService.managerCount();
		modelAndView.setViewName("adminhome");
		modelAndView.addObject("ccount", ccount);
		modelAndView.addObject("mcount", mcount);
		return modelAndView;
	}
	
	@GetMapping("count-persons")
	@ResponseBody
	public Map<String, Integer> countPersons() {
		Map<String, Integer> result = new HashMap<>();
		int ccount = (int)adminService.customerCount();
		int mcount = (int)adminService.managerCount();
		result.put("customer", ccount);
		result.put("manager", mcount);
		return result;
	}
	
	@GetMapping("viewcustomers")
	public ModelAndView viewCustomers()
	{
		ModelAndView modelAndView = new ModelAndView("viewallcustomers");
		List<Customer> list = adminService.viewAllCustomers();
		modelAndView.addObject("custdata", list);
		return modelAndView;
	}
	
	@GetMapping("view")
	public ModelAndView viewCustomerByID(@RequestParam("id") int id)
	{
		Customer customer = adminService.viewCustomerById(id);
		ModelAndView modelAndView = new ModelAndView("viewcustbyid");
		modelAndView.addObject("custdata", customer);
		return modelAndView;
	}
	
	@GetMapping("deleteCustomer")
	public ModelAndView deleteCustomer()
	{
		ModelAndView modelAndView = new ModelAndView("deletecustomer");
		List<Customer> list = adminService.viewAllCustomers();
		modelAndView.addObject("custdata", list);
		return modelAndView;
	}
	
	@GetMapping("delete")
	public ModelAndView delete(@RequestParam("id") int id)
	{
		adminService.deleteCustomer(id);
		ModelAndView modelAndView = new ModelAndView("deletecustomer");
		List<Customer> list = adminService.viewAllCustomers();
		modelAndView.addObject("custdata", list);
		return modelAndView;
	}
	
	@GetMapping("addmanagers")
	public ModelAndView addManagers()
	{
		ModelAndView andView = new ModelAndView("addmanager");
		return andView;
	}
	
	@PostMapping("insertmanagers")
	public ModelAndView insertManager(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String msg = null;
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("pwd");
			Manager manager = new Manager();
			manager.setName(name);
			manager.setEmail(email);
			manager.setPassword(password);
			msg = adminService.addManager(manager);
			modelAndView.setViewName("addmanager");
			modelAndView.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = "Manager Not Added Successfully";
			modelAndView.setViewName("addmanager");
			modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	
	@GetMapping("viewmanagers")
	public ModelAndView viewAllManagers()
	{
		ModelAndView modelAndView = new ModelAndView("viewallmanagers");
		List<Manager> list = adminService.viewAllMangers();
		modelAndView.addObject("managerdata", list);
		return modelAndView;
	}
	
	@GetMapping("viewmanager")
	public ModelAndView viewManagerByID(@RequestParam("id") int id)
	{
		Manager manager = adminService.viewManagerById(id);
		ModelAndView modelAndView = new ModelAndView("viewmanagerbyid");
		modelAndView.addObject("managerdata", manager);
		return modelAndView;
	}
}

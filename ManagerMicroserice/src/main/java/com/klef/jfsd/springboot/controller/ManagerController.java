package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.service.ManagerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("manager")
public class ManagerController 
{
	@Autowired
	private ManagerService managerService;
	
	@GetMapping("")
	@ResponseBody
	public String main()
	{
		return "Manager Micro Service";
	}
	
	@GetMapping("managerLogin")
	public ModelAndView managerLogin()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("managerlogin");
		return modelAndView;
	}
	
	@PostMapping("checkmanagerlogin")
	public ModelAndView checkManagerLogin(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Manager manager = managerService.checkManagerLogin(email, password);
		if(manager != null)
		{
			modelAndView.setViewName("managerhome");
		}
		else
		{
			modelAndView.setViewName("managerlogin");
			modelAndView.addObject("message", "Login Failed");
		}
		return modelAndView;
	}
	
	@GetMapping("managerhome")
	public ModelAndView managerHome()
	{
		ModelAndView modelAndView = new ModelAndView("managerhome");
		return modelAndView;
	}
	
	@GetMapping("viewcontacts")
	public ModelAndView viewAllContacts()
	{
		ModelAndView modelAndView = new ModelAndView("viewallcontacts");
		List<Contact> list = managerService.viewAllContacts();
		modelAndView.addObject("contactdata", list);
		return modelAndView;
	}
	
	@GetMapping("addHotel")
	public ModelAndView addHotel()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("addhotel");
		return modelAndView;
	}
	
	@PostMapping("inserthotel")
	public ModelAndView insertHotel(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String msg = null;
		try
		{
			String hotelName = (String) request.getParameter("hotelName");
			String location = (String) request.getParameter("location");
			String description = (String) request.getParameter("description");
			double cost = Double.parseDouble(request.getParameter("cost"));
			String url = request.getParameter("url");
			Hotel hotel = new Hotel();
			hotel.setName(hotelName);
			hotel.setLocation(location);
			hotel.setDescription(description);
			hotel.setCost(cost);
			hotel.setUrl(url);
			msg = managerService.addHotel(hotel);
			modelAndView.setViewName("addhotel");
			modelAndView.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = "Hotel Not Added";
			modelAndView.setViewName("addhotel");
			modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	
	@GetMapping("viewhotels")
	public ModelAndView viewAllHotels()
	{
		ModelAndView andView = new ModelAndView("viewallhotels");
		List<Hotel> list = managerService.viewAllHotels();
		andView.addObject("hoteldata", list);
		return andView;
	}
	
	@GetMapping("viewhotel")
	public ModelAndView viewHotel(@RequestParam("id") int id)
	{
		ModelAndView modelAndView = new ModelAndView("viewhotelbyid");
		Hotel hotel = managerService.viewHotelById(id);
		modelAndView.addObject("hoteldata", hotel);
		return modelAndView;
	}
	
	@GetMapping("deletehotels")
	public ModelAndView deleteHotel()
	{
		ModelAndView modelAndView = new ModelAndView("deleteHotels");
		List<Hotel> list = managerService.viewAllHotels();
		modelAndView.addObject("hoteldata", list);
		return modelAndView;
	}
	
	@GetMapping("deletehotel")
	public ModelAndView deletehotel(@RequestParam("id") int id)
	{
		managerService.deleteHotel(id);
		ModelAndView modelAndView = new ModelAndView("deleteHotels");
		List<Hotel> list = managerService.viewAllHotels();
		modelAndView.addObject("hoteldata", list);
		return modelAndView;
	}
	
}

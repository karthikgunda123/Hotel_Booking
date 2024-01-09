package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Booking;
import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class CustomerController 
{
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private JavaMailSender jms;
	
	@GetMapping("/")
	public String main()
	{
		return "index";
	}
	
	@GetMapping("custreg")
	public ModelAndView customerRegister()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("register");
		return modelAndView;
	}
	
	@PostMapping("insertcustomer")
	public ModelAndView insertcustomer(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String msg = null;
		try
		{
			String name = request.getParameter("username");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			Customer customer = new Customer();
			customer.setName(name);
			customer.setEmail(email);
			customer.setPassword(password);
			
			msg = customerService.addCustomer(customer);
			
			String sub = "Thank You for Registering with Star Hotel Stay😀😀";
			String body = "Thank you " + name
					+ " for choosing to register with us. Your decision to join our platform is greatly appreciated, and we are committed to providing you with an exceptional experience for managing your hotel operations.😍🎉\r\n"
					+ "\r\n"
					+ "Here's what you can look forward to as a registered member of our Hotel Management System:\r\n"
					+ "\r\n"
					+ "Effortless Hotel Management: With our user-friendly interface, you can easily manage reservations, guest information, room availability, and more.\r\n"
					+ "\r\n"
					+ "Real-Time Updates: Stay in control with real-time updates on room bookings, occupancy, and financial reports.\r\n"
					+ "\r\n"
					+ "Enhanced Guest Experience: Provide superior service to your guests with our comprehensive management tools, ensuring a memorable stay for each visitor.\r\n"
					+ "\r\n"
					+ "Revenue Optimization: Our system helps you maximize revenue through dynamic pricing, allowing you to set rates based on demand and market conditions.\r\n"
					+ "\r\n"
					+ "Seamless Online Bookings: Attract more guests by enabling online reservations and integrating with popular booking platforms.\r\n"
					+ "\r\n"
					+ "Detailed Reporting: Access detailed reports and analytics to make informed decisions that drive your hotel's success.Once again, thank you for choosing our system. We look forward to being a part of your success in the hospitality industry. If you ever have feedback or suggestions, please do not hesitate to share them with us. Your insights are invaluable to us.\r\n"
					+ "\r\n" + "Warm regards,\r\n" + "\r\n" + "Serene Stay\r\n" + "gundakarthik2002@gmail.com\r\n";
			SimpleMailMessage smm = new SimpleMailMessage();
			smm.setFrom("gundakarthik2002@gmail.com");
			smm.setTo(email);
			smm.setSubject(sub);
			smm.setText(body);
			jms.send(smm); 
			modelAndView.setViewName("register");
			modelAndView.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = "Customer Registration Not Successfull";
			modelAndView.setViewName("register");
			modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	
	@GetMapping("custlogin")
	public ModelAndView customerLogin()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("login");
		return modelAndView;
	}
	
	@PostMapping("checkcustlogin")
	public ModelAndView checkCustLogin(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		Customer customer = customerService.checkCustomerLogin(email, password);
		if(customer != null)
		{
			// session
			HttpSession session = request.getSession();
			session.setAttribute("cid", customer.getId());
			session.setAttribute("cname", customer.getName());
			session.setAttribute("cemail", customer.getEmail());
			modelAndView.setViewName("customerhome");
		}
		else
		{
			modelAndView.setViewName("login");
			modelAndView.addObject("message", "Login Failed");
		}
		return modelAndView;
	}
	
	@GetMapping("custhome")
	public ModelAndView custHome(HttpServletRequest request)
	{
		// Session
		HttpSession session = request.getSession();
		int cid = (int) session.getAttribute("cid");
		String cname = (String) session.getAttribute("cname");
		// Session
		ModelAndView modelAndView = new ModelAndView("customerhome");
		modelAndView.addObject("cid", cid);
		modelAndView.addObject("cname", cname);
		return modelAndView;
	}
	
	@GetMapping("showhotels")
	public ModelAndView showHotels()
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("custhotels");
		List<Hotel> list = customerService.viewAllHotels();
		modelAndView.addObject("hoteldata", list);
		return modelAndView;
	}
	
	@GetMapping("search")
	public ModelAndView searchHotel(@RequestParam("name") String name)
	{
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("custhotels");
		List<Hotel> list = customerService.viewHotelsByHotelName(name);
		modelAndView.addObject("hoteldata", list);
		return modelAndView;
	}
	
	@GetMapping("book")
	public ModelAndView booking(@RequestParam("id") int id, HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		Hotel hotel = customerService.viewHotelById(id);
		modelAndView.setViewName("bookhotel");
		modelAndView.addObject("hoteldata", hotel);
		modelAndView.addObject("cname", session.getAttribute("cname"));
		modelAndView.addObject("cemail", session.getAttribute("cemail"));
		return modelAndView;
	}
	
	@GetMapping("custfacilities")
	public ModelAndView custFacilities()
	{
		ModelAndView modelAndView = new ModelAndView("customerfacilities");
		return modelAndView;
	}
	@GetMapping("custcontact")
	public ModelAndView custContact()
	{
		ModelAndView modelAndView = new ModelAndView("contactus");
		return modelAndView;
	}
	
	@PostMapping("addcontact")
	public ModelAndView addCountact(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String msg = null;
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String message = request.getParameter("message");
			Contact contact = new Contact();
			contact.setName(name);
			contact.setEmail(email);
			contact.setMessage(message);
			msg = customerService.addContact(contact);
			modelAndView.setViewName("contactus");
			modelAndView.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = "Contact UnSent";
			modelAndView.setViewName("contactus");
			modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	
	@GetMapping("changepassword")
	public ModelAndView updatePassword(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView("updatepassword");
		// session
		HttpSession session = request.getSession();
		int id = (int) session.getAttribute("cid");
		// session
		Customer customer = customerService.viewCustomerById(id);
		modelAndView.addObject("custdata", customer);
		return modelAndView;
	}
	
	@PostMapping("update")
	public ModelAndView update(HttpServletRequest request)
	{
		String msg = null;
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		int id = (int) session.getAttribute("cid");
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String password = request.getParameter("pwd");
			Customer customer = new Customer();
			customer.setId(id);
			customer.setName(name);
			customer.setEmail(email);
			customer.setPassword(password);
			msg = customerService.updateCustomer(customer);
			modelAndView.setViewName("login");
			modelAndView.addObject("message", msg);
		}
		catch(Exception e)
		{
			msg = "Login Failed";
			modelAndView.setViewName("updatepassword");
			modelAndView.addObject("message", msg);
		}
		return modelAndView;
	}
	@PostMapping("addbooking")
	public ModelAndView addBooking(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		String message = null;
		try
		{
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String hotelname = request.getParameter("hotelname");
			String location = request.getParameter("location");
			double price = Double.parseDouble(request.getParameter("price"));
			int rooms = Integer.parseInt(request.getParameter("rooms"));
			String date = request.getParameter("date");
			int days = Integer.parseInt(request.getParameter("days"));
			HttpSession session = request.getSession();
			int cid = (int) session.getAttribute("cid");

			Booking booking = new Booking();
			booking.setId(cid);
			booking.setName(name);
			booking.setEmail(email);
			booking.setHotelname(hotelname);
			booking.setLocation(location);
			booking.setPrice(price);
			booking.setRooms(rooms);
			booking.setDate(date);
			booking.setDays(days);
			
			message = customerService.addBooking(booking);
			/*
			String sub = "Hotel Booking Confirmation" + "\n\n";
			String body = 
			        "Dear " + name + ",\n\n" +
			        "We are pleased to inform you that your hotel reservation has been successfully confirmed. Thank you for choosing [Hotel Name] for your upcoming stay. Here are the details of your booking:\n\n" +
			        "Buyer's Name: "+ name+ "\n" +
			        "Buyer's Email: "+ email + "\n" +
			        "Hotel Name: " + hotelname + "\n" +
			        "Hotel Location: " + location + "\n" +
			        "Hotel Price: " + price + "\n" +
			        "Number of Rooms Booked: " + rooms + "\n" +
			        "Booking Date: " + date + "\n\n" +
			        "Number of Days in Service: " + days + "\n\n" + 
			        "Your reservation is all set, and we are looking forward to welcoming you on [Check-in Date]. If you have any special requests or additional requirements, please do not hesitate to let us know in advance, and we will do our best to accommodate your needs.\n\n" +
			        "Please make sure to keep this email for your records. If you have any questions or need to make any changes to your reservation, feel free to contact us at [Hotel Contact Information].\n\n" +
			        "We hope you have a pleasant and enjoyable stay at + "+hotelname+". Thank you for choosing us for your accommodation needs.\n\n" +
			        "Warm regards,\n" +
			        "Star Hotels\n" +
			        "Gunda Karthik's Team\n" +
			        "[7989038614]";
			SimpleMailMessage smm = new SimpleMailMessage();
			smm.setFrom("gundakarthik2002@gmail.com");
			smm.setTo(email);
			smm.setSubject(sub);
			smm.setText(body);
			jms.send(smm); */
			modelAndView.setViewName("bookingsuccess");
			modelAndView.addObject("message", message);
		}
		catch(Exception e)
		{
			message = "Booking Not SuccessFul";
			modelAndView.setViewName("bookingsuccess");
			modelAndView.addObject("message", message);
		}
		return modelAndView;
	}
	@GetMapping("bookings")
	public ModelAndView bookings(HttpServletRequest request)
	{
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		int id = (int)session.getAttribute("cid");
		List<Booking> bookingList = customerService.viewAllBookings(id);
		modelAndView.setViewName("viewbookings");
		modelAndView.addObject("bookingList", bookingList);
		return modelAndView;
	}
	
	@GetMapping("pay")
	public ModelAndView payment()
	{
		ModelAndView modelAndView = new ModelAndView("payment");
		return modelAndView;
	}
}

package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Booking;
import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.repository.BookingRepository;
import com.klef.jfsd.springboot.repository.ContactRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.HotelRepository;

@Service
public class CustomerServiceImpl implements CustomerService
{
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private ContactRepository contactRepository;
	
	@Autowired
	private HotelRepository hotelRepository;
	
	@Autowired
	private BookingRepository bookingRepository;
	
	@Override
	public String addCustomer(Customer customer) 
	{
		customerRepository.save(customer);
		return "Customer Registered Successfull";
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) 
	{
		return customerRepository.checkCustomerLogin(email, password);
	}

	@Override
	public Customer viewCustomerById(int id) 
	{
		Optional<Customer> obj = customerRepository.findById(id);
		if(obj.isPresent())
		{
			Customer customer = obj.get();
			return customer;
		}
		else
		{
			return null;
		}
	}

	@Override
	public String updateCustomer(Customer customer) 
	{
		Customer customer2 = customerRepository.findById(customer.getId()).get();
		customer2.setName(customer.getName());
		customer2.setEmail(customer.getEmail());
		customer2.setPassword(customer.getPassword());
		customerRepository.save(customer2);
		return "Employee Updates Successfully";
	}

	@Override
	public String addContact(Contact contact) 
	{
		contactRepository.save(contact);
		return "Contact Sent";
	}

	@Override
	public List<Hotel> viewHotelsByHotelName(String name) 
	{
		return hotelRepository.viewHotelsByHotelName(name);
	}
	
	@Override
	public String addBooking(Booking booking)
	{
		bookingRepository.save(booking);
		return "Booked Successfully"; 
	}

	@Override
	public List<Booking> viewAllBookings(int id) 
	{
		return bookingRepository.viewAllBookings(id);
	}
}

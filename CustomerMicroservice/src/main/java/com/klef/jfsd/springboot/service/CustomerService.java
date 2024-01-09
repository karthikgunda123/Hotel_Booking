package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Booking;
import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Hotel;

public interface CustomerService 
{
	public String addCustomer(Customer customer);
	public Customer viewCustomerById(int id);
	public String updateCustomer(Customer customer);
	public Customer checkCustomerLogin(String email, String password);
	public String addContact(Contact contact);
	public List<Hotel> viewAllHotels();
	public List<Hotel> viewHotelsByHotelName(String name);
	public Hotel viewHotelById(int id);
	public String addBooking(Booking booking);
	public List<Booking> viewAllBookings(int id);
}

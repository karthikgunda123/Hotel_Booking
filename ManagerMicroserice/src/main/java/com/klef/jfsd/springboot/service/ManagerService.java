package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.Manager;

public interface ManagerService 
{
	public Manager checkManagerLogin(String email, String password);
	public List<Contact> viewAllContacts();
	public String addHotel(Hotel hotel);
	public List<Hotel> viewAllHotels();
	public Hotel viewHotelById(int id);
	public String deleteHotel(int id);
}

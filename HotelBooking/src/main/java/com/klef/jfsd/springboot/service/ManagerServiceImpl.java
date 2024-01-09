package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Contact;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.repository.ContactRepository;
import com.klef.jfsd.springboot.repository.HotelRepository;
import com.klef.jfsd.springboot.repository.ManagerRepository;

@Service
public class ManagerServiceImpl implements ManagerService
{
	@Autowired
	private ManagerRepository managerRepository;
	
	@Autowired
	private ContactRepository contactRepository;
	
	@Autowired
	private HotelRepository hotelRepository;
	
	@Override
	public Manager checkManagerLogin(String email, String password) 
	{
		return managerRepository.checkManagerLogin(email, password);
	}

	@Override
	public List<Contact> viewAllContacts() 
	{
		return contactRepository.findAll();
	}

	@Override
	public String addHotel(Hotel hotel) 
	{
		hotelRepository.save(hotel);
		return "Hotel Added Successfully";
	}

	@Override
	public List<Hotel> viewAllHotels() 
	{
		return hotelRepository.findAll();
	}

	@Override
	public Hotel viewHotelById(int id) 
	{
		Optional<Hotel> obj = hotelRepository.findById(id);
		if(obj.isPresent())
		{
			Hotel hotel = obj.get();
			return hotel;
		}
		else {
		return null;
		}
	}

	@Override
	public String deleteHotel(int id) 
	{
		Optional<Hotel> obj = hotelRepository.findById(id);
		String msg = null;
		if(obj.isPresent())
		{
			Hotel hotel = obj.get();
			hotelRepository.delete(hotel);
			msg = "Hotel Deleted Successfully";
		}
		else
		{
			msg = "Hotel Not Found";
		}
		return msg;
	}

}

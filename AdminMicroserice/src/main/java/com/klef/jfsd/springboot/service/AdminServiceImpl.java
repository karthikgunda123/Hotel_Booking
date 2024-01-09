package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Manager;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;
import com.klef.jfsd.springboot.repository.ManagerRepository;

@Service
public class AdminServiceImpl implements AdminService
{
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private CustomerRepository customerRepository;
	
	@Autowired
	private ManagerRepository managerRepository;

	@Override
	public Admin checkAdminLogin(String username, String password) 
	{
		return adminRepository.checkAdminLogin(username, password);
	}

	@Override
	public List<Customer> viewAllCustomers() 
	{
		return customerRepository.findAll();
	}

	@Override
	public String deleteCustomer(int id) 
	{
		Optional<Customer> customer = customerRepository.findById(id);
		String msg = null;
		if(customer.isPresent())
		{
			Customer cust = customer.get();
			customerRepository.delete(cust);
			msg = "Customer Deleted Successfully";
		}
		else
		{
			msg = "Customer Not Found";
		}
		return msg;
	}

	@Override
	public Customer viewCustomerById(int id) 
	{
		Optional<Customer> customer = customerRepository.findById(id);
		if(customer.isPresent())
		{
			Customer cust = customer.get();
			return cust;
		}
		else
		{
			return null;
		}
	}

	@Override
	public long customerCount() 
	{
		return customerRepository.count();
	}

	@Override
	public String addManager(Manager manager) 
	{
		managerRepository.save(manager);
		return "Manager Added Successfully";
	}

	@Override
	public List<Manager> viewAllMangers() 
	{
		return managerRepository.findAll();
	}

	@Override
	public Manager viewManagerById(int id) 
	{
		Optional<Manager> manager = managerRepository.findById(id);
		if (manager.isPresent()) 
		{
			Manager man = manager.get();
			return man;
		} 
		else 
		{
			return null;
		}
	}

	@Override
	public long managerCount() 
	{
		return managerRepository.count();
	}
}

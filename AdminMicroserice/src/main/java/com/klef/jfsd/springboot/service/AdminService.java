package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Manager;

public interface AdminService 
{
	public List<Customer> viewAllCustomers();
	public String deleteCustomer(int id);
	public Customer viewCustomerById(int id);
	public Admin checkAdminLogin(String username, String password);
	public long customerCount();
	public long managerCount();
	public String addManager(Manager manager);
	public List<Manager> viewAllMangers();
	public Manager viewManagerById(int id);
}

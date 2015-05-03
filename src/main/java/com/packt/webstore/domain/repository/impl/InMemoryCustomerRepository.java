package com.packt.webstore.domain.repository.impl;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.packt.webstore.domain.Customer;
import com.packt.webstore.domain.repository.CustomerRepository;

@Repository
public class InMemoryCustomerRepository implements CustomerRepository {

	private List<Customer> listOfCustomers = new ArrayList<Customer>();
	
	public InMemoryCustomerRepository() {
		Customer customer1 = new Customer("C1234", "customer 1", "address 1", new BigDecimal(10));
		
		Customer customer2 = new Customer("C1235", "customer 2", "address 2", new BigDecimal(20));
		
		Customer customer3 = new Customer("C1236", "customer 3", "address 3", new BigDecimal(30));
		
		listOfCustomers.add(customer1);
		listOfCustomers.add(customer2);
		listOfCustomers.add(customer3);
		
	}
	
	public List<Customer> getAllCustomers() {
		return listOfCustomers;
	}

	public Customer getCustomerById(String customerID) {
		Customer customerById = null;
		
		for(Customer customer : listOfCustomers) {
			if(customer != null && customer.getCustomerId() != null && customer.getCustomerId().equals(customerID)) {
				customerById = customer;
				break;
			}
		}
		
		if(customerById == null) {
			throw new IllegalArgumentException("No customers found with the customer id: "+ customerID);
		}
		return customerById;
	}
}

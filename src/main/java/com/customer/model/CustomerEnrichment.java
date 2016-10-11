package com.customer.model;

import com.customerenrichment.dto.Customer;
import com.customerenrichment.dto.Loyalty;

public class CustomerEnrichment {
	
	private Customer customer;
	private Loyalty loyalty;
	
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public Loyalty getLoyalty() {
		return loyalty;
	}
	public void setLoyalty(Loyalty loyalty) {
		this.loyalty = loyalty;
	}

}

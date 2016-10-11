package com.customer.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.customerenrichment.dto.Customer;
import com.customerenrichment.dto.Loyalty;

@Service
public class CustomerEnrichmentServiceImpl implements CustomerEnrichmentService {

	public Customer findCustomerByPhoneNumber(String searchString) {
		
		
		final String uri = "http://localhost:8080/customer/cust?phoneNumber={criteria}";
		
		Map<String,String> vars = new HashMap<String, String>();
		vars.put("criteria", searchString);
	     
	    RestTemplate restTemplate = new RestTemplate();
	    Customer result = restTemplate.getForObject(uri, Customer.class,vars);
	     
	    System.out.println(result);
		
		
		return result;
	}
	
	public Loyalty findLoyaltyForCustomer(int custId){
		
		final String uri = "http://localhost:8082/loyalty/rest/loyalty/customer/{customerId}";
		
		Map<String,Integer> vars = new HashMap<String, Integer>();
		vars.put("customerId", custId);
		
		RestTemplate restTemplate = new RestTemplate();
		Loyalty loyaltyObj = restTemplate.getForObject(uri, Loyalty.class, vars);
		
		System.out.println(loyaltyObj);
		
		return loyaltyObj;
		
	}
	

}

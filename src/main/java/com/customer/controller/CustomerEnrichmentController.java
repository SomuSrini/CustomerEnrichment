package com.customer.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.customer.model.CustomerEnrichment;
import com.customer.service.CustomerEnrichmentService;
import com.customerenrichment.dto.Customer;
import com.customerenrichment.dto.Loyalty;


@Controller
public class CustomerEnrichmentController {
	
	   @Autowired    
	   CustomerEnrichmentService customerEnrichmentService;


	   @RequestMapping(value = "/search")
	   public String Search(@RequestParam("searchString") String phoneNumber , Model model) {
		   CustomerEnrichment customerEnrichment = new CustomerEnrichment();
		   
	      if(!StringUtils.isEmpty(phoneNumber)){
	    	  
	    	  Customer customer = customerEnrichmentService.findCustomerByPhoneNumber(phoneNumber);
	    	  if(null != customer){
		    	  Loyalty loyalty = customerEnrichmentService.findLoyaltyForCustomer(customer.getCust_id());
		    	  customerEnrichment.setCustomer(customer);
		    	  customerEnrichment.setLoyalty(loyalty);
		    	  model.addAttribute("searchResult", customerEnrichment);
		    	  return "editCustomer";
	    	  }

	      }
    	  model.addAttribute("searchResult", customerEnrichment);
    	  return "search";
	      
	   }
	   
	   @RequestMapping(value = "/save")
	   public void save(@RequestParam("searchString") String phoneNumber , Model model) {
		   
	   }
	}




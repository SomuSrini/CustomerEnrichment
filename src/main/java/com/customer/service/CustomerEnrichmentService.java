package com.customer.service;

import com.customerenrichment.dto.Customer;
import com.customerenrichment.dto.Loyalty;

public interface CustomerEnrichmentService {

	Customer findCustomerByPhoneNumber(String searchString);

	Loyalty findLoyaltyForCustomer(int custId);
}

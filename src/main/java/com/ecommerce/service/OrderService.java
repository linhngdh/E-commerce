package com.ecommerce.service;

import java.util.List;

import com.ecommerce.entity.Order;
import com.fasterxml.jackson.databind.JsonNode;

public interface OrderService {
	Order create(JsonNode orderData);

	Order findById(Long id);

	List<Order> findByUsername(String username);
}

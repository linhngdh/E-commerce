package com.ecommerce.service;

import java.util.List;

import java.util.Optional;

import com.ecommerce.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
public interface ProductService {

	List<Product> findAll();

	Product findById(String id);

	List<Product> findByCategoryId(String id);

	Product create(Product product);

	Product update(Product product);

	void delete(String id);

	List<Product> findProduct(String request);
	
	
	Page<Product> findByCategoryIdPaged(String id, Pageable pageable);
	Page<Product> findAllPaged(Pageable pageable);

	Page<Product> searchProducts(String searchKeyword, Pageable pageable);

}

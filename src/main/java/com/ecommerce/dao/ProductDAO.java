package com.ecommerce.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ecommerce.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
public interface ProductDAO extends JpaRepository<Product, String> {
	@Query("SELECT p FROM Product p WHERE p.category.id=?1")
	List<Product> findByCategoryId(String id);
	
	@Query("SELECT p FROM Product p WHERE p.id LIKE ?1 or p.name LIKE ?1 or p.price LIKE ?1 "
			+ "or p.createDate LIKE ?1 or p.category.name LIKE ?1 or p.image LIKE ?1")
	List<Product> findProduct(String request);
	
	@Query("SELECT p FROM Product p WHERE p.category.id = :categoryId")
	Page<Product> findByCategoryIdPaged(@Param("categoryId") String categoryId, Pageable pageable);

	@Query("SELECT p FROM Product p")
	Page<Product> findAllPaged(Pageable pageable);

	
	@Query("SELECT p FROM Product p WHERE " +
		       "p.id LIKE %:keyword% OR " +
		       "p.name LIKE %:keyword% OR " +
		       "p.price LIKE %:keyword% OR " +
		       "p.createDate LIKE %:keyword% OR " +
		       "p.category.name LIKE %:keyword% OR " +
		       "p.image LIKE %:keyword%")
		Page<Product> searchProducts(@Param("keyword") String searchKeyword, Pageable pageable);

}

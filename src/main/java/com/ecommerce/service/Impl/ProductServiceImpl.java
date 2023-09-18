package com.ecommerce.service.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ecommerce.dao.ProductDAO;
import com.ecommerce.entity.Product;
import com.ecommerce.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	@Autowired
	ProductDAO pdao;

	@Override
	public List<Product> findAll() {
		return pdao.findAll();
	}

	@Override
	public Product findById(String id) {
		return pdao.findById(id).get();
	}

	@Override
	public List<Product> findByCategoryId(String id) {
		return pdao.findByCategoryId(id);
	}

	@Override
	public Product create(Product product) {
		return pdao.save(product);
	}

	@Override
	public Product update(Product product) {
		return pdao.save(product);
	}

	@Override
	public void delete(String id) {
		pdao.deleteById(id);
	}

	@Override
	public List<Product> findProduct(String request) {
		return pdao.findProduct(request); 
	}

	 @Override
	    public Page<Product> findAllPaged(Pageable pageable) {
	        return pdao.findAllPaged(pageable);
	    }

	    @Override
	    public Page<Product> findByCategoryIdPaged(String id, Pageable pageable) {
	        return pdao.findByCategoryIdPaged(id, pageable);
	    }

	    @Override
	    public Page<Product> searchProducts(String searchKeyword, Pageable pageable) {
	        return pdao.searchProducts(searchKeyword, pageable);
	    }




	
}

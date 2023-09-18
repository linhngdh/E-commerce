package com.ecommerce.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ecommerce.entity.Product;
import com.ecommerce.service.ProductService;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;

@Controller
public class ProductController {
	@Autowired
	ProductService productService;

	@GetMapping({"/","/product/list"})
	public String listProducts(Model model,

			@RequestParam(name = "cid", required = false) String id,

			@RequestParam(name = "page", defaultValue = "1") int page,

			@RequestParam(name = "size", defaultValue = "6") int size,

			@RequestParam(name = "search", required = false) String searchKeyword) {
		Pageable pageable = PageRequest.of(page - 1, size);

		Page<Product> productPage;
		if (id != null) {
			productPage = productService.findByCategoryIdPaged(id, pageable);
		} else if (searchKeyword != null) {
			productPage = productService.searchProducts(searchKeyword, pageable);
		} else {
			productPage = productService.findAllPaged(pageable);
		}

		model.addAttribute("productPage", productPage);
		return "product/list";
	}

	@RequestMapping("/product/detail/{id}")
	public String detail(Model model, @PathVariable("id") String id) {
		Product item = productService.findById(id);
		model.addAttribute("item", item);
		return "product/detail";
	}

}

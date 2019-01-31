package com.playsoul;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.playsoul.model.Product;
import com.playsoul.service.ProductService;

@Controller
public class ProductController 
{
	@Autowired
	ProductService productService;
	
	@GetMapping("/allProducts")
	public String viewAllProducts(Model model) 
	{
		List<Product> allProducts=productService.getAllProducts();
		model.addAttribute("allProducts", allProducts);
		return "viewAllProducts";
	}
	@RequestMapping(value="/viewProduct/{productId}",method=RequestMethod.GET)
	public String productdetails(Model model,@PathVariable("productId")int productId)
	{
		Product product=productService.getProductById(productId);
		model.addAttribute("product",product);
		return "viewProduct";
	}
	
}

package com.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.entity.ProductDetail;

@Controller
public class HomeController {
	@RequestMapping("/home")
	public String home(Model model) {
		String page= "home";
		model.addAttribute("page", page);
		return "home";  // This is the name of the view file
	}
	
	@RequestMapping("/add")
	public String addProduct(Model model) {
		String page="add";
		ProductDetail productDetail = new ProductDetail();
		model.addAttribute("page", page);
		model.addAttribute("product" , productDetail);
		return "home";  
	}
	
	@RequestMapping(value="/saveProduct", method=RequestMethod.POST) // By Default the method is get
	public String saveProduct(@ModelAttribute("product") ProductDetail prodDetail, Model model) {
		prodDetail.setAddDate(new Date());
		System.out.println(prodDetail);
		model.addAttribute("page", "home");
		return "home";
	}
}

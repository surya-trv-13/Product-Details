package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		model.addAttribute("page", page);
		return "home";  
	}
}

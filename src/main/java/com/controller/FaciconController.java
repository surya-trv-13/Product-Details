package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FaciconController {
	@RequestMapping("icon")
    String favicon() {
        return "forward:/resources/image/product.png";
    }
}

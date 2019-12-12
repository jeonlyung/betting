package com.webproject.betting.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
	
	
	@RequestMapping(value = "/login")
	public String loginGet() {
		return "login";
	}
	
	@RequestMapping(value = "/register")
	public String register() {
		return "register";
	}
	
}

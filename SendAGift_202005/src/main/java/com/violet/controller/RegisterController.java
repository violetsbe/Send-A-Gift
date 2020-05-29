package com.violet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

	
	@RequestMapping(value= {"/register/registerForm"})
	public String register() {
		
		//WEB-INF/views//register/registerForm.jsp
		return "/register/registerForm";
	}
	
}

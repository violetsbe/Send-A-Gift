package com.violet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	@RequestMapping(value= {"/login/loginForm"})
	public String login() {
		
		return "/login/loginForm";
	}
	
    @RequestMapping(value="/access_denied")
    public String accessDeniedPage() throws Exception {
        return "/access_denied";
    }

}

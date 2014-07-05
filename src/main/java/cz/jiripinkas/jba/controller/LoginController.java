package cz.jiripinkas.jba.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {

	
	private static Logger log = Logger.getLogger(LoginController.class);
	
	@RequestMapping("/login")
	public String login() {
		log.info("LonginController.login"); 
		return "login";
	}
}

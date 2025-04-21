package edu.jspider.springmvc.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.jspider.springmvc.DTO.Admin;

@Controller
public class PageController {
	
	@RequestMapping(path = "/sign-up-page")
	protected String getSignUpPage() {
		return "sign_up";
		
	}
	
	@RequestMapping(path = "/login-page")
	protected String getLoginPage() {
		return "login";
	}
	
	@RequestMapping(path = "/home")
	protected String getHomePage(HttpSession httpSession) {
		Admin admin = (Admin) httpSession.getAttribute("authenticated_admin");
		if(admin != null)
		return "home";
		else
			return "login"; 
	}

	@RequestMapping(path = "/add-student-page")
		protected String getAddStudentPage() {
			
		return "add_student";
		}
}

package com.msd.flight_reservation_app.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.msd.flight_reservation_app.entity.User;
import com.msd.flight_reservation_app.repository.UserRepository;

@Controller
public class UserController {

	@Autowired
	private UserRepository userRepo;
    
	@RequestMapping("/mainpage")
	public String mainpage() {
		return "home";
	}
	
	@RequestMapping("/logiPage")
	public String logiPage() {
		return "login";
	}
	
	@RequestMapping("/findFlight")
	public String findFlight() {
		return "findFlights";}
		
	
	@RequestMapping("/showLoginPage")
	public String showLoginPage() {
		return "login/login";
	}

	@RequestMapping("/showReg")
	public String showReg() {
		return "showReg";
	}

	@RequestMapping("/saveReg")
	public String saveReg(@ModelAttribute("user") User user) {
		userRepo.save(user);
		return "login";
	}

	@RequestMapping("/verifyLogin")
	public String verifyLogin(@RequestParam("emailid") String emailid, @RequestParam("password") String password, ModelMap modelMap) {
		User user = userRepo.findByEmail(emailid);
		if(user!=null) {
		if (user.getEmail().equals(emailid) && user.getPassword().equals(password)) {
			return "home";
		} else {
			modelMap.addAttribute("error", "invalid useremail / password");
			return "login";
		}
		}else {
			modelMap.addAttribute("error", "invalid useremail / password");
			return "login";
		}
		}
}

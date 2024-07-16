package com.event_management.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.event_management.model.User;
import com.event_management.repository.UserRepository;



@Controller
public class UserController {
	
	@Autowired
	private UserRepository erepo;

	@GetMapping("/")
	public String Demo() {
		
		return "index.jsp"; 
	}

	@PostMapping("/Registration")
	public String Registers(@ModelAttribute User user,@RequestParam String name,@RequestParam String phone,@RequestParam String email,  @RequestParam String password,String cPassword) {
		erepo.save(user); 
		System.out.println(name);
		System.out.println(phone);
		System.out.println(email);
		System.out.println(password);
		System.out.println(cPassword);
		
		return "UserLogin.jsp"; 
	}
	@GetMapping("/login")
	public String login(@RequestParam String email, @RequestParam String password)
	{
	    System.out.println(email);
	    System.out.println(password);
	    
	    List<User> users = erepo.findByEmail(email);
	    
	    for (User user : users) {
	        if (user.getPassword().equals(password)) {
	            return "loginsuccessfull.jsp";    
	        }
	    }
	    
	    return "login.jsp";
	}
	


}


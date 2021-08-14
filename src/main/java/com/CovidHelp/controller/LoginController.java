package com.CovidHelp.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;




@Controller
@RequestMapping("user")
@SessionAttributes("user")
public class LoginController extends HttpServlet{

	
	
	@Autowired
	HttpSession session;
	
	@RequestMapping("/home")
	public String homePage() {
		return "home";
	}

	
	  @RequestMapping("/hospitalDetails")
	  public String donateItems()
	 { 
		  return "findbeds"; 
	 }
	  @RequestMapping("/bgcovid")
	  public String backgroundPage()
	 { 
		  return "background"; 
	 }
	  @RequestMapping("/covid")
	  public String covidEffect()
	 { 
		  return "covid"; 
	 }
	 
	
			

}

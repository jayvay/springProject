package com.spring.sExam.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Required;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@RequestMapping(value = {"/","/h","/aCheck"}, method = RequestMethod.GET)
//	public String home(Locale locale, Model model, HttpServletRequest request) {
//		int age = request.getParameter("age")==null? 0 : Integer.parseInt(request.getParameter("age"));
	public String home(Locale locale, Model model, HttpServletRequest request, 
			@RequestParam(name="age", defaultValue = "0", required = false) int age) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate);
		model.addAttribute("name1", "zzanga");
		
		String url = "";
		if(age < 20) url = "a1";
		else if(age >=20 && age < 30) url = "a2";
		else if(age >= 30) url = "a3";
		
		model.addAttribute("url", url);
		model.addAttribute("age", age);
		
		return "home";
	}
	
	@RequestMapping(value = "/aCheck", method = RequestMethod.POST)
	public String aCheckPost(Model model, HttpServletRequest request,
			@RequestParam(name="namepost", defaultValue = "", required = false) String name) {
		int age = request.getParameter("age")==null? 0 : Integer.parseInt(request.getParameter("age"));

		String url = "";
		if(age < 20) url = "a1";
		else if(age >=20 && age < 30) url = "a2";
		else if(age >= 30) url = "a3";
		
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		model.addAttribute("url", url);
		
		return "home";
	}
	
	@RequestMapping(value = "/bCheck", method = RequestMethod.POST)
	public String bCheckPost(Model model,
			@RequestParam(name="dramaMovie", defaultValue = "", required = false) String dramaMovie) {
		String url = "";
		if(dramaMovie.equals("watermelon")) url = "dWatermelon";
		else if(dramaMovie.equals("soul")) url = "mSoul";
		
		model.addAttribute("dramaMovie", dramaMovie);
		model.addAttribute("url", url);
		
		return "home";
	}
}

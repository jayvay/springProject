package com.spring.sExam.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/atom") //중계경로(중간경로)
public class AtomController {
	
	@RequestMapping(value = {"/a1","/atom1"}, method = RequestMethod.GET)
	public String a1Get(Model model, HttpServletRequest request,
			@RequestParam(name="age", defaultValue = "0", required = false) int age) {
		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
		System.out.println("age:"+age);
		model.addAttribute("data", "a1으로 갑니다");
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		
		String gender = genderCheck(name);
		model.addAttribute("gender", gender);
		return "atom/a1";
	}

	private String genderCheck(String name) {
		String gender = "";
		if(name.equals("신짱구")) gender="남자";
		else if(name.equals("신짱아")||name.equals("zzanga")) gender="여자";
		return gender;
	}

	@RequestMapping(value = "/a2", method = RequestMethod.GET)
	public String a2Get(Model model, @RequestParam(name="name", defaultValue = "", required = false) String name,
			@RequestParam(name="age", defaultValue = "0", required = false) int age) {
		model.addAttribute("data","a2로 갑니다");
		model.addAttribute("name", name);
		
		String gender = genderCheck(name);
		model.addAttribute("gender", gender);

		model.addAttribute("age", age);
		return "atom/a2";
	}
	
	@RequestMapping(value = "/a3", method = RequestMethod.GET)
	public String a3Get(Model model, String name, @RequestParam(name="age", defaultValue = "", required = false) int age) {
		model.addAttribute("data", "a3으로 갑니다");
		model.addAttribute("name", name);
		
		String gender = genderCheck(name);
		model.addAttribute("gender", gender);
		
		model.addAttribute("age", age);
		return "atom/a3";
	}
	
}
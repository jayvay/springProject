package com.spring.sExam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/btom")
public class BtomController {
	
	@RequestMapping(value = "/dWatermelon", method = RequestMethod.GET)
	public String bDramaGet(Model model,
			@RequestParam(name="dWatermelon", defaultValue = "", required = false) String dWatermelon) {
		
		model.addAttribute("dWatermelon", dWatermelon);
		return "btom/dWatermelon";
	}
	
	@RequestMapping(value = "/mSoul", method = RequestMethod.GET)
	public String bMovieGet(Model model, 
			@RequestParam(name="mSoul", defaultValue = "", required = false) String mSoul) {
		
		model.addAttribute("mSoul", mSoul);
		return "btom/mSoul";
	}
	
}

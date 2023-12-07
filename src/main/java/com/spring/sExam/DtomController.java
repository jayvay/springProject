package com.spring.sExam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/dtom")
public class DtomController {

	@RequestMapping(value = "/d1", method = RequestMethod.GET)
	public String d1Get() {
		return "dtom/d1";
	}
}

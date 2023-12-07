package com.spring.sExam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/dtom")
public class DtomController {

	@RequestMapping(value = "/d1", method = RequestMethod.GET)
	public String d1Get(@RequestParam(name="flag", defaultValue = "", required = false) String flag) {
		if(flag.equals("OK")) {
			System.out.println("d1Service2에 다녀왔습니다.");
		}
		return "dtom/d1";
	}

	@RequestMapping(value = "/d1Service", method = RequestMethod.GET)
	public String d1ServiceGet() {
		System.out.println("이곳은 d1Service 입니다.");
		System.out.println("지금은 작업 중");
		System.out.println("작업 완료");
		//return "dtom/d1";
		return "redirect:/dtom/d1";
	}

	@RequestMapping(value = "/d1Service2", method = RequestMethod.GET)
	public String d1Service2Get() {
		System.out.println("이곳은 d1Service2 입니다.");
		System.out.println("지금은 작업 중2");
		System.out.println("작업 완료2");

		return "redirect:/dtom/d1?flag=OK";
	}
}

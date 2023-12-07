package com.spring.sExam.controller;

import java.io.UnsupportedEncodingException;
import java.util.Collection;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.HttpRequestHandlerServlet;

import com.spring.sExam.vo.CTomVO;

@Controller
@RequestMapping("/ctom")
public class CtomController {
	
	@RequestMapping(value = "/c1", method = RequestMethod.GET)
	public String c1Get() {
		
		return "ctom/c1";
	}

//	@RequestMapping(value = "/c2", method = RequestMethod.GET)
//	public String c2Get() {
//		
//		return "ctom/c2";
//	}

//	@RequestMapping(value = "/c2", method = RequestMethod.GET)
//	public String c2Get(Model model, HttpServletRequest request) {
//		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
//		int age = request.getParameter("age")==null ? 0 : Integer.parseInt(request.getParameter("age"));
//	
//		model.addAttribute("name", name);
//		model.addAttribute("age", age);
//		return "ctom/c2";
//	}
	
	
	@RequestMapping(value = "/c2", method = RequestMethod.POST) //action 없이 method="post"로 보내면 url대로 여기로 옴
	public String c2Post(String name, 
			@RequestParam(name="age", defaultValue = "0", required = false) int age, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		
		return "ctom/c2";
	}

	@RequestMapping(value = "/c2Ok", method = RequestMethod.POST)	//action으로 보내면 이리로 온다
	public String c2OkPost(String name, 
			@RequestParam(name="age", defaultValue = "0", required = false) int age, Model model) {
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		return "ctom/c2";
	}
	
//	@RequestMapping(value = "/c2", method = RequestMethod.POST)
//	public String c2Get(Model model, HttpServletRequest request) throws UnsupportedEncodingException {
//		request.setCharacterEncoding("utf-8");
//		
//		String name = request.getParameter("name")==null ? "" : request.getParameter("name");
//		int age = request.getParameter("age")==null ? 0 : Integer.parseInt(request.getParameter("age"));
//	
//		model.addAttribute("name", name);
//		model.addAttribute("age", age);
//		return "ctom/c2";
//	}
	
	@RequestMapping(value = "/c3", method = RequestMethod.GET)
	public String c3Get() {
		return "ctom/c3";
	}
	
	@RequestMapping(value = "/c3", method = RequestMethod.POST)
	public String c3Post(Model model, HttpServletRequest request,
			@RequestParam(name = "name", defaultValue = "", required = false) String name,
			@RequestParam(name = "age", defaultValue = "0", required = false) int age) throws UnsupportedEncodingException {
		
		//request.setCharacterEncoding("utf-8"); 컨트롤러에 들어오기 전에 filter 처리 해줘야 한글 나옴
		
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		return "ctom/c3";
	}
	
	@RequestMapping(value = "/c4", method = RequestMethod.GET)
	public String c4Get() {
		return "ctom/c4";
	}
	
//  @RequestMapping(value = "/c4Path/{name}", method = RequestMethod.GET)
//	@RequestMapping(value = "/c4Path/{name}/{age}", method = RequestMethod.GET)
	@RequestMapping(value = "/c4Path/{name}-{age}/test", method = RequestMethod.GET)
	public String c4PathGet(Model model,
			@PathVariable String name,
			@PathVariable String age ) {
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		
		return "ctom/c4";
	}
	
	
	@RequestMapping(value = "/c5", method = RequestMethod.GET)
	public String c5Get() {
		return "ctom/c5";
	}
	@RequestMapping(value = "/c5", method = RequestMethod.POST)
	public String c5Post(Model model,
			@RequestParam(name="name") String name,
			@RequestParam(name="age", defaultValue = "0", required = false) int age,	//숫자는 null이면 형변환할 것이 없어서 400번 에러가 나오므로 defaultValue로 null값 처리를 해준다 
			@RequestParam(name="mid") String mid,
			@RequestParam(name="pwd") String pwd,
			@RequestParam(name="gender") String gender,
			@RequestParam(name="address") String address) {
		
		model.addAttribute("name", name);
		model.addAttribute("age", age);
		model.addAttribute("mid", mid);
		model.addAttribute("pwd", pwd);
		model.addAttribute("gender", gender);
		model.addAttribute("address", address);
		return "ctom/c5";
	}
	
	
	@RequestMapping(value = "/c6", method = RequestMethod.GET)
	public String c6Get() {
		return "ctom/c6";
	}
	@RequestMapping(value = "/c6", method = RequestMethod.POST)
	public String c6Post(Model model,
			@RequestParam(name="name") String name,
			@RequestParam(name="age", defaultValue = "0", required = false) int age,
			@RequestParam(name="mid") String mid,
			@RequestParam(name="pwd") String pwd,
			@RequestParam(name="gender") String gender,
			@RequestParam(name="address") String address) {
		
//		model.addAttribute("name", name);
//		model.addAttribute("age", age);
//		model.addAttribute("mid", mid);
//		model.addAttribute("pwd", pwd);
//		model.addAttribute("gender", gender);
//		model.addAttribute("address", address);
		
		CTomVO vo = new CTomVO();
		vo.setName(name);
		vo.setAge(age);
		vo.setMid(mid);
		vo.setPwd(pwd);
		vo.setGender(gender);
		vo.setAddress(address);
	
		model.addAttribute("vo", vo);
		return "ctom/c6";
	}
	
	
	@RequestMapping(value = "/c7", method = RequestMethod.GET)
	public String c7Get() {
		return "ctom/c7";
	}
	@RequestMapping(value = "/c7", method = RequestMethod.POST)
	public String c7Post(Model model, CTomVO vo) {
		
//		vo.setName(name);
//		vo.setAge(age);
//		vo.setMid(mid);
//		vo.setPwd(pwd);
//		vo.setGender(gender);
//		vo.setAddress(address);
	
		System.out.println("vo : " + vo);
		
		model.addAttribute("vo", vo);
		return "ctom/c7";
	}
}

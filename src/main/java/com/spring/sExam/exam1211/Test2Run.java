package com.spring.sExam.exam1211;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test2Run {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("xml/test2.xml");
		
		Test2Info info = (Test2Info) ctx.getBean("info");
		
		System.out.println("생성자를 통해 값을 주입함");
		System.out.println("driver : " + info.getDriver());
		System.out.println("url : " + info.getUrl());
		System.out.println("user : " + info.getUser());
		System.out.println("password : " + info.getPassword());
	}
}

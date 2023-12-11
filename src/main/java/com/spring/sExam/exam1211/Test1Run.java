package com.spring.sExam.exam1211;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Test1Run {
	public static void main(String[] args) {
		ClassPathXmlApplicationContext ctx = new ClassPathXmlApplicationContext("xml/test1.xml");
		
		Test1Info info = (Test1Info) ctx.getBean("info");
		
		System.out.println("setter를 통해 값을 주입함");
		System.out.println("driver : " + info.getDriver());
		System.out.println("url : " + info.getUrl());
		System.out.println("user : " + info.getUser());
		System.out.println("password : " + info.getPassword());
	}
}

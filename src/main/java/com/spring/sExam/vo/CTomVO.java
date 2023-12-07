package com.spring.sExam.vo;

import lombok.Data;

//@Getter
//@Setter
//@ToString 이 세 개를 하나로 쓰면 @Data
@Data
public class CTomVO {
	private String name;
	private int age;
	private String mid;
	private String pwd;
	private String gender;
	private String address;
	
	private String job;
	private String wDate;
	
}

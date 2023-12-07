package com.spring.sExam.exam1207;

import java.util.Scanner;

public class SungjukRun {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		
		//SungjukService service = new SungjukService();
		//service.printTitle();
		
		SungjukVO vo = new SungjukVO();
		
		while(true) {
			vo = new SungjukVO();
			System.out.print("성명을 입력하세요 : ");
			vo.setName(scanner.next());
			if(vo.getName().equals("0")) break;
			
			System.out.print("국어 점수를 입력하세요 : ");
			vo.setKor(scanner.nextInt());
			System.out.print("영어 점수를 입력하세요 : ");
			vo.setEng(scanner.nextInt());
			System.out.print("수학 점수를 입력하세요 : ");
			vo.setMat(scanner.nextInt());
			
			vo.sungjukTitle();
			vo.sungjukCalc();
			vo.sungjukPrint();
		}
		System.out.println("---------------------------------");
		scanner.close();
	}
}

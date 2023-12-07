package com.spring.sExam.exam1207;

import java.util.Scanner;

public class CalculatorRun4 {
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);

		Calculator4VO vo = new Calculator4VO();
		CalculatorService4 service = new CalculatorService4();
		
		while(true) {
			System.out.print("su1(종료 : 0) : ");
			int su1 = scanner.nextInt();
			
			if(su1 != 0) vo.setSu1(su1);
			else break;
			
			System.out.print("su2 : ");
			vo.setSu2(scanner.nextInt());
			
			service.sum(vo.getSu1(), vo.getSu2());
			service.sub(vo.getSu1(), vo.getSu2());
			service.mul(vo.getSu1(), vo.getSu2());
			service.div(vo.getSu1(), vo.getSu2());
			
		}
		System.out.println("작업 끝~");
		scanner.close();
	}
}

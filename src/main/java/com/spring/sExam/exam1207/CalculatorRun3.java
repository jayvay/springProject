package com.spring.sExam.exam1207;

import java.util.Scanner;

public class CalculatorRun3 {
	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);

		Calculator2 calc = new Calculator2();
		
		System.out.print("su1 : ");
		int su1 = scanner.nextInt();
		System.out.print("su2 : ");
		int su2 = scanner.nextInt();
		
		calc.setSu1(su1);
		calc.setSu2(su2);
		
		calc.sum();
		calc.sub();
		calc.mul();
		calc.div();
		
		scanner.close();
	}
}

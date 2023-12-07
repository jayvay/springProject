package com.spring.sExam.exam1207;

public class CalculatorRun {
	public static void main(String[] args) {
		
		Calculator calc = new Calculator();
		
		calc.setSu1(100);
		calc.setSu2(200);
		
		calc.sum();
		calc.sub();
		calc.mul();
		calc.div();
		
	}
}

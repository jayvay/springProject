package com.spring.sExam.exam1211;

public class BMIService {

	public void printLine() {
		System.out.println("=====================================================");
	}
	
	public void printTitle() {
		System.out.println("성명\t키\t몸무게\tBMI\t결과");
	}
	
	public BMIVO bmiCalc(BMIVO vo) {
		double bmi = vo.getWeight() / ((vo.getHeight()*0.01) * (vo.getHeight()*0.01));
		vo.setBmi(bmi);
		String res = "";
		if(bmi < 18.5) res = "저체중";
		else if(bmi < 23) res = "표준체중";
		else if(bmi < 25) res = "과체중";
		else res = "비만";
		vo.setRes(res);
		return vo;
	}
	
	public void printBMI(BMIVO vo) {
		System.out.println(vo.getName() + "\t" + vo.getHeight() + "\t" + vo.getWeight() + "\t" + String.format("%.1f", vo.getBmi()) + "\t" + vo.getRes());
	}
}

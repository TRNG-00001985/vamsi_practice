package Revature_practice;

public class LeapOrNotEx {
	public static void main(String[]args) {
		int year=2024;
		if(year%400 ==0)
			System.out.println(year+" is a leap year");
		else if(year %400==0 && year%100 !=0)
			System.out.println(year+" is a leap year");
		else
			System.out.println(year+" not a leap year");
	}

}

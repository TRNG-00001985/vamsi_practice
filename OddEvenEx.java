package Revature_practice;
import java.util.Scanner;
public class OddEvenEx {
		public static void main(String[] args) {
		int a=3;
        /*Scanner sc = new Scanner(System.in);
        System.out.println("enter the number: ");
        int number = sc.nextInt();
        if (number%2==0)
            System.out.println(number+" is even number");
        else
            System.out.println(number+" is odd number");*/
		if((a & 1) ==0) {
			System.out.println("even");
			
		}
		else {
			System.out.println("ODD");
		}
    }

}

package Revature_practice;

public class StrEx {
	public static void main(String[] args) {
		 String sv = new String("hello this is string");
	        System.out.println(sv);
	        System.out.println(sv.length());
	        System.out.println(sv.isEmpty());
	        System.out.println(sv.substring(1,6));
	        System.out.println(sv.charAt(6));
	        System.out.println(sv.concat(" raju"));
	        System.out.println(sv.endsWith("t"));
	        System.out.println(sv.indexOf(12,2));
	        System.out.println(sv.repeat(1));
	        System.out.println(sv.trim());
	        System.out.println(sv.substring(7,9));
	        String st = new String("hello this is Revature");
	        System.out.println(st);
	        System.out.println(st.indexOf(12,5));
	        System.out.println(st.length());
	        System.out.println(st.isEmpty());
	        System.out.println(st.trim());
	        StringBuilder sb =new StringBuilder("Revature");
	        System.out.println(sb+" before reverse");
	        sb.reverse();
	        System.out.println(sb+" after reverse");
	}

}

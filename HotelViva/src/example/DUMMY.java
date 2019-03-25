package example;

public class DUMMY {
	public static int num=7;
	
	static int sum() {
		return num--;
	}
	
	public static void main(String[] args) {
		for (sum(); sum()>0; sum()) {
			System.out.println("number :: "+ sum()); // 5  2
			//System.out.println("number :: "+ num);  // 5 3 1
		}
 	}

}

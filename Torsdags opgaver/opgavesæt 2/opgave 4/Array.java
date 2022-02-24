import java.util.*;

class Array{

	static int[] ole = new int[3];
	static String[] ole2 = new String[3];
	static boolean[] ole3 = new boolean[3];


	public static void main(String[]args){

		ole[0]=1;
		ole[1]=2;
		ole[2]=3;

		ole2[0]= "Per";
		ole2[1]= "Hans";
		ole2[2]= "Gert";

		ole3[0]= true;
		ole3[1]= false;
		ole3[2]= true;

		printStringArray(ole2);
		printStringArray(ole2);
	
		System.out.println(sumOfArray(ole));

		System.out.println(avgOfArray(ole));

	}
	//bruger tostring til at printe indholdet af array.
	public static void printStringArray(String[] ole){
		System.out.println(Arrays.toString(ole));
	}

	//bruger forloop til at printe mit array
	public static void printStringArrayLoop(String[] ole){
		for(int i=0; i < ole.length; i++){
			System.out.println(ole[i]);

		}
	}	

	public static int sumOfArray(int[] ole){
		int sum = 0;

		for(int i = 0; i < ole.length; i++){
			sum+=ole[i];
		}
		return sum;
	}

	public static int avgOfArray(int[] ole){
		int total = 0;
		int avg = 0;

		for(int i = 0; i < ole.length; i++){
			total += ole[i];
		}
		avg = total / ole.length;
		return avg;
	}
}

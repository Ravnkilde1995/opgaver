class Main{
  public static boolean happy = true;

  public static void main(String [] args) {
   
   if (iAmHappy()){
     System.out.println("I clap my hands");
   
   } else {
     System.out.println("I don't clap my hands"); 
   }

   int result=sum(3,3);
   System.out.println(result);

   String result2=upper("Tak til tutor");
   System.out.println(result2);

   boolean result3 = returnIfUpper("Oliver");
   System.out.println(result3);
}


public static boolean iAmHappy(){
  
  happy=true; 
  return true;
}

public static int sum (int a, int b){

  int result = a+b;
  return result;
}

public static String upper(String hello){

  return hello.toUpperCase();
}

public static boolean returnIfUpper(String a){
  boolean isUpperCase;

  if(Character.isUpperCase(a.charAt(0))){
      return isUpperCase=true;

  } else {
      return false;
  }


}  

}
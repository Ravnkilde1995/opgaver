public class Person {
	
	//1. fields
	private String firstName;
	private String lastName;
	private int age;

	//2. constructor
	public Person(String fn, String ln, int age){
		this.firstName = fn;
		this.lastName = ln;
		this.age = age;
	}

	//3. methods
	public String getFullName(){
		return this.firstName + " " + this.lastName;
	}

	public String getFirstName(){
		return this.firstName;
	}

	public String lastName(){
		return this.lastName;
	}

	public void changeName(String newFirstName, String newLastName){
		this.firstName = newFirstName;
		this.lastName = newLastName;
	}

	public int getAge(){
		return this.age;
	}
}

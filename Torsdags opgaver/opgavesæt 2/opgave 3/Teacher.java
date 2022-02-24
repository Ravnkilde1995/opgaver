class Teacher {

	//1.fields
	private String name;
	private int age;
	private boolean isFemale;

	//2. Constructer
	public Teacher(String name, int age, boolean isFemale){
		this.name=name;
		this.age=age;
		this.isFemale=isFemale;
	}

	//3. Methods
	public String getName(){
		return name;
	}
	public int getAge(){
		return age;
	}
	public boolean getIsFemale(){
		return isFemale;
	}

}
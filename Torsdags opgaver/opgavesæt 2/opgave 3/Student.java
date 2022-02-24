class Student {

	//1.fields
	private String name;
	private int age;
	private boolean isFemale;
	private String team;

	//2. Constructer
	public Student(String name, int age, boolean isFemale, String team){
		this.name=name;
		this.age=age;
		this.isFemale=isFemale;
		this.team=team;
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
	public String getTeam(){
		return team;
	}

}
class Datamatik{

public static void main(String[]args){

	Student student1 = new Student("Oliver", 26, false, "Semester 1");
	Student student2 = new Student("Alex", 26, false, "Dream Team");
	Teacher teacher = new Teacher("Tess", 30, true);

	System.out.println("Teachers name: \n" + teacher.getName());
	System.out.println("Student names and teams:\n" + student1.getName() + " - " + student1.getTeam() +"\n" + student2.getName() + " " + student2.getTeam());
}

}
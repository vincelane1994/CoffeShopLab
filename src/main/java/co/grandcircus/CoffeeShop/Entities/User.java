package co.grandcircus.CoffeeShop.Entities;

public class User {
	private int id;
	private String firstName;
	private int age;
	private String email;
	private String password;
	private String lastName;
	private String memberSince;
	
	public String getMemberSince() {
		return memberSince;
	}


	public void setMemberSince(String memberSince) {
		this.memberSince = memberSince;
	}


	public User() {}
	

	public User(int id, String firstName, int age, String email, String password, String lastName, String memberSince) {
		super();
		this.id = id;
		this.firstName = firstName;
		this.age = age;
		this.email = email;
		this.password = password;
		this.lastName = lastName;
		this.memberSince = memberSince;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public String getFirstName() {
		return firstName;
	}


	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}


	public String getLastName() {
		return lastName;
	}


	public void setLastName(String lastName) {
		this.lastName = lastName;
	}


	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	

}

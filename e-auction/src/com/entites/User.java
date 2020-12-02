package com.entites;

public class User {
	private int id;
	private String name;
	private String email;
	private String passward;
	private String gender;
	private String profile;
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public User(String name, String email, String passward, String gender) {
		super();
		this.name = name;
		this.email = email;
		this.passward = passward;
		this.gender = gender;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassward() {
		return passward;
	}
	public void setPassward(String passward) {
		this.passward = passward;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	
	 

}

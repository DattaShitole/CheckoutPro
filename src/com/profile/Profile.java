package com.profile;

import java.util.List;

public class Profile {
	
	private String login;
	private String password;
	private String name;
	private String age;
	private String email;
	private List<Profile> relatedProfiles;

	public String getLogin() {
		return login;
	}
	public void setLogin(String login) {
		this.login = login;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public List<Profile> getRelatedProfiles() {
		return relatedProfiles;
	}
	public void setRelatedProfiles(List<Profile> relatedProfiles) {
		this.relatedProfiles = relatedProfiles;
	}
}

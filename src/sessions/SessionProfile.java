package sessions;

import java.util.HashSet;
import java.util.Set;

public class SessionProfile {
	
	private String login;
	private String password;
	private String name;
	private String age;
	private String email;
	private Set<String> friendProfiles = new HashSet<String>();

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
	public Set<String> getFriendProfiles() {
		return friendProfiles;
	}
	public void setFriendProfiles(Set<String> friendProfiles) {
		this.friendProfiles = friendProfiles;
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
}

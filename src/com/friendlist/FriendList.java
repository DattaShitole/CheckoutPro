package com.friendlist;

import sessions.SessionProfile;

public class FriendList {

	String submit = null;
    String email = null;    
    
    public void setSubmit(String s) {
        submit = s;
    }
    
	public void processFriendRequest(SessionProfile sessionProfile) {
		if (submit != null && submit.equals("add")) {
			sessionProfile.getFriendProfiles().add(email);
		} else if (submit != null && submit.equals("remove")) {
			sessionProfile.getFriendProfiles().remove(email);
		}
		reset();
	}

    // reset
	public void reset() {
		submit = null;
		email = null;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
}

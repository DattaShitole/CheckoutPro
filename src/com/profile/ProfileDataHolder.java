package com.profile;

import java.util.ArrayList;
import java.util.List;

public class ProfileDataHolder {
	
	public List<Profile> profiles = new ArrayList<Profile>();
	
	public void getAllProfiles() {
		
		List<Profile> relatedProfiles = new ArrayList<Profile>();
		Profile sandeep = new Profile();
		sandeep.setAge("31");
		sandeep.setEmail("skvm95@gmail.com");
		sandeep.setLogin("skvm95");
		sandeep.setName("Sandeep Mishra");
		sandeep.setPassword("sandeep");
		sandeep.setRelatedProfiles(null);
		relatedProfiles.add(sandeep);
		
		Profile kartik = new Profile();
		kartik.setAge("35");
		kartik.setEmail("kartik@gmail.com");
		kartik.setLogin("kartik");
		kartik.setName("Kartik Acharya");
		kartik.setPassword("kartik");
		kartik.setRelatedProfiles(relatedProfiles);
		
		relatedProfiles.clear();
		relatedProfiles.add(kartik);
		sandeep.setRelatedProfiles(relatedProfiles);
		
		profiles.add(sandeep);
		profiles.add(kartik);
	}

}

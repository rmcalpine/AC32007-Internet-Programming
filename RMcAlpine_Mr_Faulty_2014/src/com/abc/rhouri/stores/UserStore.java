package com.abc.rhouri.stores;

public class UserStore {
	
	private String Username; //The username that has been registered
	private String EmailAddress; //The email address that corresponds with the username
	private String Password; //The password that corresponds with the account
	//private String UserType; //If the user is a Developer, Reporter or Admin
	
	public UserStore(){
	}
	
	/* Set methods */
		
		public void setUsername(String newUsername){
			Username=newUsername;
		}
		
		public void setEmailAddress(String newEmail){
			EmailAddress=newEmail;
		}
		
		public void setPassword(String newPassword){
			Password=newPassword;
		}
		
		
		//This method doesn't do anything at the minute as there is 
		//no method to convert the radio button to a string value!  RM
		// Will fix ASAP
		//
		// 01/03/2013
		//
		//public void setUserType(String userType){
			//UserType=newUserType;
		//}
	
		
		/* Get methods */
		

		public String getUsername(){
			return Username;
		}
		
		public String getPassword(){
			return Password;
		}
		
		public String getEmailAddress(){
			return EmailAddress;
		}
		
		
}

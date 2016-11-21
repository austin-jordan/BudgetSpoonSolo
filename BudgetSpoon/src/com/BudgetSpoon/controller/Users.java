package com.BudgetSpoon.controller;
/**This class is used to create the Array of Users of the User class
 * These users are all stored in the database 
 */
public class Users {

	private int id;
	private String username;
	private String password;
	private String emailAddress;
	
public Users(){}
	
	public Users (String username, String password, String emailAddress) {
		this.username = username;
		this.password = password;
		this.emailAddress = emailAddress;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
}

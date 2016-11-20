package com.BudgetSpoon.controller;
/**This class is used as a constructor for Restaurant objects
 * It takes in all the variables necessary for Restaurants
 * Hibernate then maps these restaurant objects to the database
 */
public class Restaurants {

	private int id;
	private String name;
	private String streetAddress;
	private String cityAddress;
	private String zipcodeAddress;
	private String stateAddress;
	private String cuisine;
	private Double breakfast_price;
	private Double lunch_price;
	private Double dinner_price;
	private String emailAddress;
	private String password;
	private String website;
	private int numofdiners;
	

	public Restaurants() {}

	public Restaurants(String name, String streetAddress, String cityAddress, String stateAddress, String zipcodeAddress, String cuisine) {
		this.name = name;
		this.streetAddress = streetAddress;
		this.cityAddress = cityAddress;
		this.stateAddress = stateAddress;
		this.zipcodeAddress = zipcodeAddress;
		this.cuisine = cuisine;
		
	}
	
	public Restaurants(String name, String streetAddress, String cityAddress, String stateAddress, String zipcodeAddress, String cuisine,
			double breakfast_price, double lunch_price, double dinner_price, 
			String emailAddress, String password, String website) {
		this(name, streetAddress, cityAddress, stateAddress, zipcodeAddress, cuisine);
		this.breakfast_price = breakfast_price;
		this.lunch_price = lunch_price;
		this.dinner_price = dinner_price;
		this.emailAddress = emailAddress;
		this.password = password;
		this.website = website;
	}
	
	
	
	public Double getBreakfast_price() {
		return breakfast_price;
	}

	public void setBreakfast_price(Double breakfast_price) {
		this.breakfast_price = breakfast_price;
	}

	public Double getLunch_price() {
		return lunch_price;
	}

	public void setLunch_price(Double lunch_price) {
		this.lunch_price = lunch_price;
	}

	public Double getDinner_price() {
		return dinner_price;
	}

	public void setDinner_price(Double dinner_price) {
		this.dinner_price = dinner_price;
	}

	public int getNumofdiners() {
		return numofdiners;
	}

	public void setNumofdiners(int numofdiners) {
		this.numofdiners = numofdiners;
	}

	public String getCuisine() {
		return cuisine;
	}

	public void setCuisine(String cuisine) {
		this.cuisine = cuisine;
	}

	public String getStreetAddress() {
		return streetAddress;
	}

	public void setStreetAddress(String streetAddress) {
		this.streetAddress = streetAddress;
	}

	public String getCityAddress() {
		return cityAddress;
	}

	public void setCityAddress(String cityAddress) {
		this.cityAddress = cityAddress;
	}

	
	public String getStateAddress() {
		return stateAddress;
	}

	public void setStateAddress(String stateAddress) {
		this.stateAddress = stateAddress;
	}

	public String getZipcodeAddress() {
		return zipcodeAddress;
	}

	public void setZipcodeAddress(String zipcodeAddress) {
		this.zipcodeAddress = zipcodeAddress;
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
	
	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}
	
}

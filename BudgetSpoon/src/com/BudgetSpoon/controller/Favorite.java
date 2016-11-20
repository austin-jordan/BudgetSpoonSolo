package com.BudgetSpoon.controller;
//This class is responsible for creating the favorite object which is used to represent user favorited restaurants
//Takes in the username of the user logged in as well as the restaurant id of the restaurant
public class Favorite {

		private String username;
		private int restaurant_id;
		
		public Favorite() {};
		public Favorite(String username, int restaurant_id) {
			this.username = username;
			this.restaurant_id = restaurant_id;
		}
		
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public int getRestaurant_id() {
			return restaurant_id;
		}
		public void setRestaurant_id(int restaurant_id) {
			this.restaurant_id = restaurant_id;
		}
}
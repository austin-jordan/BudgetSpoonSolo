package com.BudgetSpoon.controller;

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
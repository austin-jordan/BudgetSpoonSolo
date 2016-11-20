/**
 * 
 */
package com.BudgetSpoon.controller;

import java.util.ArrayList;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import javax.transaction.Transaction;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.BudgetSpoon.dao.RestaurantDao;

/**
 * @author Priti
 *
 */
@Controller
public class Signup {
			//Mapping for a new Restaurant
	@RequestMapping(value = "/restaurantSignup", method = RequestMethod.POST)
		public ModelAndView signUp(Model model) {
			
					return new ModelAndView("Signup", "command", new Restaurants());
		}
	
	//Mapping for adding a new Restaurant by sending values to the constructor from restaurant signup form
	@RequestMapping(value = "Signupsuccess", method = RequestMethod.POST)

	//	using Model Attributes to build the Restaurant object and populating the RestaurantDao with 
//a list of Restaurant objects 
	public String registerRestaurant(@ModelAttribute("SpringWeb")Restaurants rest, Model model ) {
		
		RestaurantDao restDao = new RestaurantDao();
	//checking if the price of meal is null and if so 
	//	setting it to a double value so it can be stored properly in the database
		if(rest.getBreakfast_price()==null)
		{
			rest.setBreakfast_price(0.0);
		}
		
		if(rest.getLunch_price()==null)
		{
			rest.setLunch_price(0.0);
		}
		if(rest.getDinner_price()==null)
		{
			rest.setDinner_price(0.0);
		}
		ArrayList<Restaurants> ls = new ArrayList<Restaurants>();
		ls.add(rest);
     
		//adds the restaurant list to the Data Access Object
		restDao.addRestaurants(ls);
		//directs to index page 
			return "index";
		}
		
	}
	




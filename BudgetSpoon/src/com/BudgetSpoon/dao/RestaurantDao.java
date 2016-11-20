package com.BudgetSpoon.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.BudgetSpoon.controller.Restaurants;

//Dao = data access object. This is the file where we'll create an object that accesses some information inside of our database.
//Dao's encapsulate the logic for retrieving, saving, and updating data in a database. 
public class RestaurantDao {

	//Create a method that when called, returns a list of Restaurant Objects. 
	//The Restaurant object is built inside of a POJO(plain-old-java-object) called Restaurants.
	//All POJO's are kept in a separate package specifically for files that contain the private fields along
	//with the getters and setters for each obect.
	
	public void addRestaurants(List<Restaurants> rList) {
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		Transaction tx = session.beginTransaction();
		
		
	      try{
	    	 for (Restaurants restaurant : rList) {
	         session.save(restaurant); 
	    	 }
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	}
	
	
	
	public List<Restaurants> getRestaurantList() {
		
		//The next 2 statements are always required to open a session and begin to extract data from a database
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		session.beginTransaction();

		
		//This statement uses the createCriteria method, and passes a parameter to indicate the name of the POJO class
		//that contains the type of objects that we will be retrieving. The way that the createCriteria method
		//knows which table to retrieve data from is because the Restaurants class is mapping to our restaurants table
		//as indicated in the bedgetSpoon.hbm.xml file.
		//(Ex: The parameter can be Mealtypes.class, Cuisines.class, etc., but it MUST match the exact name of the POJO file, and the
		//POJO file must be mapped to the appropriate table in hibernate.cfg.xml)
		Criteria criteria = session.createCriteria(Restaurants.class);

		//Create object to store the List of restaurants. The .list() method lists out all the results
		List<Restaurants> ls = (List<Restaurants>) criteria.list();
		
		return ls;
	}
}

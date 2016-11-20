package com.BudgetSpoon.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.BudgetSpoon.controller.Favorite;
/**This DAO or Data Access Object abstracts the retrieval of data from the database.
 * This prevents complications being caused from the source of data being changed.
 */
public class FavoriteDao {

public void addFavorites (Favorite userFav) {
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		Transaction tx = session.beginTransaction();
		
		
	      try{
	         session.save(userFav); 
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	}

public List<Favorite> getFavoriteList() {
	
	//The next 2 statements are always required to open a session and begin to extract data from a database
	Session session = (new Configuration().configure().buildSessionFactory()).openSession();

	session.beginTransaction();

	
	//This statement uses the createCriteria method, and passes a parameter to indicate the name of the POJO class
	//that contains the type of objects that we will be retrieving. The way that the createCriteria method
	//knows which table to retrieve data from is because the Restaurants class is mapping to our restaurants table
	//as indicated in the bedgetSpoon.hbm.xml file.
	//(Ex: The parameter can be Mealtypes.class, Cuisines.class, etc., but it MUST match the exact name of the POJO file, and the
	//POJO file must be mapped to the appropriate table in hibernate.cfg.xml)
	Criteria criteria = session.createCriteria(Favorite.class);

	//Create object to store the List of restaurants. The .list() method lists out all the results
	List<Favorite> ls = (List<Favorite>) criteria.list();
	
	return ls;
}
}
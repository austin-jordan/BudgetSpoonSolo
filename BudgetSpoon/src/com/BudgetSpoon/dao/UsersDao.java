package com.BudgetSpoon.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.BudgetSpoon.controller.Users;

public class UsersDao {

	public void addUsers (List<Users> uList) {
		
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		Transaction tx = session.beginTransaction();
		
		
	      try{
	    	 for (Users user : uList) {
	         session.save(user); 
	    	 }
	         tx.commit();
	      }catch (HibernateException e) {
	         if (tx!=null) tx.rollback();
	         e.printStackTrace(); 
	      }finally {
	         session.close(); 
	      }
	      
	}
	
	public List<Users> getUserList() {
		Session session = (new Configuration().configure().buildSessionFactory()).openSession();

		session.beginTransaction();
		
		Criteria criteria = session.createCriteria(Users.class);
		
		List<Users> ls = (List<Users>) criteria.list();
		
		return ls;
	}
}


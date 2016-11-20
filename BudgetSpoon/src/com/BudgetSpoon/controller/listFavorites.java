package com.BudgetSpoon.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class listFavorites {
	
	@RequestMapping(value="/loginSuccess.html")
	public ModelAndView searchFavorites(@RequestParam("username") String username) {
		
			
			ArrayList<Favorite> results = new ArrayList<Favorite>();
			Session session = (new Configuration().configure().buildSessionFactory()).openSession();

			session.beginTransaction();
			
			username = "bryan"; //whatever you want here.
					Criteria criteria = session.createCriteria(Favorite.class);
					criteria.add(Restrictions.like("username",username));
					List<Favorite> list = criteria.list();
					System.out.println(list);
					
			return new ModelAndView("loginSuccess.html", "fList", results);
	}
}

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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.BudgetSpoon.controller.Users;
import com.BudgetSpoon.dao.UsersDao;

@Controller
public class Profile {

	@RequestMapping(value = "/Account", method = RequestMethod.GET)
	public ModelAndView Account(Model model) {
	
		return new ModelAndView("Account", "command", new Users());
	}

@RequestMapping(value = "AccountSuccess", method = RequestMethod.POST)
public String registerUser(@ModelAttribute("SpringWeb")Users user1, Model model ) {
	UsersDao user1Dao = new UsersDao();
	
	ArrayList<Users> ls = new ArrayList<Users>();
	ls.add(user1);
 
    user1Dao.addUsers(ls);
    return "index";
}
	
}

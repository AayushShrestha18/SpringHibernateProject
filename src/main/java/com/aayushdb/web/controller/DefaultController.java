/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.controller;

import com.aayushdb.web.entity.Customer;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author dell
 */
@Controller
@RequestMapping(value = "/")
public class DefaultController {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;
    private Transaction transaction;

    @RequestMapping(method = RequestMethod.GET)
    //@ResponseBody
    public String index(Model model) {
        session = sessionFactory.openSession();
        /*transaction=session.beginTransaction();
        
        Customer customer=new Customer(2,"Paribesh","Bidari",
            "paribhasa@gmail.com","9824625",true);
        session.saveOrUpdate(customer);
        transaction.commit();
        return customer.getId() + "success";*/

        //Query query = 
        //session.createQuery("select c from Customer c");
        Criteria criteria = session.createCriteria(Customer.class);
        criteria.add(Restrictions.eq("id", 2));
        model.addAttribute("customers", criteria.list());
        return "index";
        //return null;

    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String edit(@PathVariable("id") int id) {
            session = sessionFactory.openSession();
        Customer customer = (Customer) session.get(Customer.class, id);
        return customer.getFirstName() + " " + customer.getLastName();

    }

}

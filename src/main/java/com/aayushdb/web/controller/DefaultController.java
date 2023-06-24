/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.controller;

import com.aayushdb.web.entity.Customer;

import java.util.List;

import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
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
@RequestMapping(value = "/home")
public class DefaultController {

    @Autowired
    private SessionFactory sessionFactory;
    private Session session;

    @RequestMapping(method = RequestMethod.GET)
    
    public String index(Model model) {
        session = sessionFactory.openSession();
        CriteriaBuilder criteriaBuilder = session.getCriteriaBuilder();
        CriteriaQuery<Customer> criteriaQuery = criteriaBuilder.createQuery(Customer.class);
        Root<Customer> root = criteriaQuery.from(Customer.class);

        Predicate idPredicate = criteriaBuilder.equal(root.get("id"), 2);
        criteriaQuery.where(idPredicate);

        TypedQuery<Customer> query = session.createQuery(criteriaQuery);
        List<Customer> customers = query.getResultList();

        model.addAttribute("customers", customers);
        return "/index";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    @ResponseBody
    public String edit(@PathVariable("id") int id) {
            session = sessionFactory.openSession();
        Customer customer = (Customer) session.get(Customer.class, id);
        return customer.getFirstName() + " " + customer.getLastName();
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.dao.impl;

import com.aayushdb.web.dao.CustomerDAO;
import com.aayushdb.web.entity.Customer;
import org.springframework.stereotype.Repository;

/**
 *
 * @author dell
 */
@Repository(value="customerDAO")
public class CustomerDAOImpl extends GenericDAOImpl<Customer> implements CustomerDAO{
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.dao.impl;

import com.aayushdb.web.dao.GenericDAO;
import java.lang.reflect.ParameterizedType;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author dell
 */
public abstract class GenericDAOImpl<T> implements GenericDAO<T> {

    @Autowired
    protected SessionFactory sessionFactory;
    protected Session session;
    protected Transaction transaction;
    private Class<?> persistClass;

    public GenericDAOImpl(){
        persistClass=(Class)((ParameterizedType)getClass()
                .getGenericSuperclass())
                .getActualTypeArguments()[0];
    }
    
    protected void startSession() {
        session = sessionFactory.openSession();
    }

    @Override
    public void save(T model) {
        startSession();
        transaction = session.beginTransaction();
        session.saveOrUpdate(model);
        transaction.commit();
    }
    
    @Override
    public List<T> getAll() {
        startSession();
        return session.createCriteria(persistClass)
                .list();
    }
    
    @Override
    public T getById(int id) {
        startSession();
        return (T)session.get(persistClass, id);
    }
    
    @Override
    public boolean delete(int id) {
        startSession();
        transaction=session.beginTransaction();
        T t=getById(id);
        if(t!=null){
            transaction=session.beginTransaction();
            session.delete(t);
            transaction.commit();
            
        }
        return false;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.dao.impl;

import com.aayushdb.web.dao.GenericDAO;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.persistence.criteria.Selection;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
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
        persistClass=(Class<?>)((ParameterizedType)getClass()
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
    @SuppressWarnings (value="unchecked")
    public List<T> getAll() {
        startSession();
        CriteriaBuilder cb = session.getCriteriaBuilder();
        CriteriaQuery<?> cr = cb.createQuery(persistClass);
        Root<?> root = cr.from(persistClass);   
        ((CriteriaQuery<T>)(cr)).select((Selection<T>)root);

        Query<?> query = session.createQuery(cr);
        List<?> results = query.getResultList();
        return (List<T>) results;
    }
    
    @Override
    @SuppressWarnings (value="unchecked")
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

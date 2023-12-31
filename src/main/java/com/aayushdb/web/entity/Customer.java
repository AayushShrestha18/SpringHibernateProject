/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


/**
 *
 * @author dell
 */

@Entity
@Table (name="customers")
public class Customer {
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column (name = "id")
        private int id;
        @Column(name="first_name")
        private String firstName;
        @Column(name="last_name")
        private String lastName;
        @Column(name="email")
        private String email;
        @Column(name="contact_no")
        private String contactNo;
        @Column(name="added_date",insertable = false)
        @Temporal(TemporalType.TIMESTAMP)
        private Date addedDate;
        @Column(name="modified_date",nullable = true)
        @Temporal(TemporalType.TIMESTAMP)
        private Date modifiedDate;
        @Column(name="status")
        private Boolean status;
        @OneToMany(mappedBy = "customer")
        private List<Complaint> complaintList;

    public Customer() {
    }
        
       

    public Customer(int id, String firstName, String lastName, String email, String contactNo, boolean status) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.contactNo = contactNo;
        this.addedDate = null;
        this.modifiedDate =null;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContactNo() {
        return contactNo;
    }

    public void setContactNo(String contactNo) {
        this.contactNo = contactNo;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }

    public Date getModifiedDate() {
        return modifiedDate;
    }

    public void setModifiedDate(Date modifiedDate) {
        this.modifiedDate = modifiedDate;
    }

    public boolean isStatus() {
        return status; 
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public List<Complaint> getComplaintList() {
        return complaintList; 
    }

    public void setComplaintList(List<Complaint> complaintList) {
        this.complaintList = complaintList;
    }          
}

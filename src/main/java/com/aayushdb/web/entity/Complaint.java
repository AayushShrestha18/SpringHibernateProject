package com.aayushdb.web.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table (name="complaints")
public class Complaint implements Serializable{
    private static final long serialVersionUID = 1L;
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        @Column (name = "id")
        private Integer id;
        @Column (name = "subject")
        private String subject;
        @Column (name = "message")
        private String message;
        @Basic (optional=false)
        @Column(name="complaint_date", insertable=false)
        @Temporal(TemporalType.TIMESTAMP)
        private Date complaintDate;
        @JoinColumn(name="customer_id", referencedColumnName = "id")
        @ManyToOne
        private Customer customer;

        public Complaint() {           
        }

         public Complaint(Integer id) {
            this.id=id;
        }

        public Complaint(Integer id, Date complaintDate) {
            this.id=id;
            this.complaintDate=complaintDate;
        }

        public Integer getId(){
            return id;
        }

        public void setId(Integer id){
            this.id=id;
        }

        public String getSubject(){
            return subject;
        }

        public void setSubject(String subject){
            this.subject=subject;
        }

        public String getMessage(){
            return message;
        }

        public void setMessage(String message){
            this.message=message;
        }

        public Date getComplaintDate(){
            return complaintDate;
        }

        public void setComplaintDate(Date complaintDate){
            this.complaintDate=complaintDate;
        }

        public Customer getCustomer(){
            return customer;
        }

        public void setCustomer(Customer customer){
            this.customer=customer;
        }
}

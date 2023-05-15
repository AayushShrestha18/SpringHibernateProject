/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web;

import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

/**
 *
 * @author dell
 */
@Configuration
@EnableWebMvc
@ComponentScan (basePackages="com.aayush.springapp")
public class AppConfigurer extends WebMvcConfigurerAdapter{  
    @Bean
    public InternalResourceViewResolver getViewResolver(){
        return new InternalResourceViewResolver("/WEB-INF/views/", ".jsp");                      
    }
    
    @Bean
    public DataSource getDataSource(){
        String url="jdbc:postgresql://ec2-54-235-132-202.compute-1.amazonaws.com/daoehndc4temti?sslmode=required";
        String username="rgqdgkwsfruzyf";
        String password="22433344cd23e7082ece419d4f23e97c221f82d3fd786418ec976dc71b5e4626";
        return new DriverManagerDataSource(url, username, password);
    }

    @Bean
    public JdbcTemplate getJdbcTemplate(){
        return new JdbcTemplate(getDataSource());
    }

}

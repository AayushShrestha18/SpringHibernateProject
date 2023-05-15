/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.aayushdb.web.controller.admin;

import com.aayushdb.web.dao.MailTemplateDAO;
import com.aayushdb.web.entity.MailTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author dell
 */
@Controller
@RequestMapping(value="/admin/mailtemplates")
public class MailTemplateController {
    @Autowired
    private MailTemplateDAO mailtemplateDAO;
    
    @RequestMapping(method=RequestMethod.GET)
    public String index(Model model){
        model.addAttribute("mailtemplates",mailtemplateDAO.getAll());
        return "admin/mailtemplates/index";
        
    }
    
    @RequestMapping(value="/add",method=RequestMethod.GET)
    public String add(){
        return "admin/mailtemplates/add";
        
    }
    
    @RequestMapping(value="/save",method=RequestMethod.POST)
    public String save(@ModelAttribute("MailTemplate") MailTemplate mailtemplate){
        mailtemplateDAO.save(mailtemplate);
        return "redirect:/admin/mailtemplates";
        
    }
    
    @RequestMapping(value="/edit/{id}",method=RequestMethod.GET)
    public String edit(@PathVariable("id") int id,Model model){
        model.addAttribute("mailtemplate", mailtemplateDAO.getById(id));
        return "admin/mailtemplates/edit";
        
    }
    
    @RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
    public String delete(@PathVariable("id") int id){
        mailtemplateDAO.delete(id);
        return "redirect:/admin/mailtemplates";
        
    }
}

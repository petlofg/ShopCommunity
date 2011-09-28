/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.web.form;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.*;

import java.util.regex.*;

/**
 *
 * @author Petter
 */
public class LoginForm extends ActionForm{
    
    private String login;
    //TODO kankse inte lagra password här..
    private String password;
    
    public void setLogin(String login){
        this.login = login;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    
    public String getLogin(){
        return login;
    }
    
    public String getPassword(){
        return password;
    }
    
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request){
        ActionErrors errors = new ActionErrors();
        //Regex  ^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$
        if( getLogin() == null || getLogin().length() < 1 ) {
            errors.add("logim",new ActionMessage("error.login.required"));
        }
        if( getPassword() == null || getPassword().length() < 1 ) {
            errors.add("password",new ActionMessage("error.password.required"));
        }
        return errors;
    }
    
    
}

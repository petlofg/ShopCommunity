/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.domain;

/**
 * 
 * @author Petter
 */
public abstract class User {
    private String name;
    private String email;
    private String phoneNumber;
    private String adress;
    
    public User(){ }
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getEmail(){
        return email;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public String getPhoneNumber(){
        return phoneNumber;
    }
    
    public void setPhoneNumber(String phoneNumber){
        this.phoneNumber = phoneNumber;
    }
    
    public String getAdress(){
        return adress;
    }
    
    public void setAdress(String adress){
        this.adress = adress;
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.domain;

import java.util.Date;

/**
 *
 * @author Petter
 */
public class Item {
    private String name;
    private int articleNumber;
    private Date incomingDate;
    private int quantity;
    
    public String getName(){
        return name;
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public int getArticleNumber(){
        return articleNumber;
    }
    
    public void setArticleNumber(int articleNumber){
        this.articleNumber = articleNumber;
    }
    
    public Date getIncomingDate(){
        return incomingDate;
    }
    
    public void setIncomingDate(Date incomingDate){
        this.incomingDate = incomingDate;
    }
    
    public int getQuantity(){
        return quantity;
    }
    
    public void setQuantity(int quantity){
        this.quantity = quantity;
    }
}

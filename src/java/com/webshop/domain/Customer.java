/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.domain;

/**
 *
 * @author Robin
 */
public class Customer extends User {
    private String creditCardNumber;
    private String postalCode;
    private String cityName;
    private ShoppingCart shoppingCart;
    private OrderList orderList;
    
    public Customer(){
        super();
    }
    
    public String getCreditCardNumber(){
        return creditCardNumber;
    }
    
    public void setCreditCardNumber(String creditCardNumber){
        this.creditCardNumber = creditCardNumber;
    }
    
    public String getPostalCode(){
        return postalCode;
    }
    
    public void setPostalCode(String postalCode){
        this.postalCode = postalCode;
    }
    
    public String getCityName(){
        return cityName;
    }
    
    public void setCityName(String cityName){
        this.cityName = cityName;
    }
    
    public ShoppingCart getShoppingCart(){
        return shoppingCart;
    }
    
    public void setShoppingCart(ShoppingCart shoppingCart){
        this.shoppingCart = shoppingCart;
    }
    
    public OrderList getOrderList(){
        return orderList;
    }
    
    public void setOrderList(OrderList orderList){
        this.orderList = orderList;
    }
}

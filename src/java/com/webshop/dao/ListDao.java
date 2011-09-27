/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.dao;

/**
 *
 * @author Robin
 */
public class ListDao {
    public static void setStatus(String userEmail, Enum Status){
        //TODO: add status
    }
    
    public static ListItem getListItem(String userEmail, String itemName){
        return ...
        //(User user, Item item)
        //TODO: add stuff här
    }
    
    public static void addListItem(User user, Item item){
        ...
        //TODO: ADD STUFF
    }
    
    public static List<ListItem> getListItemByUsers(List<User> users){
        
    }
    
    public static List<ListItem> getListItemByStatuses(List<ListEnum> status){
        
    }
    
    
}

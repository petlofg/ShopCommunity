/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.domain;

import java.util.ArrayList;

/**
 *
 * @author Robin
 */
public class ShoppingCart {
    private ArrayList<Item> itemList;
    
    public ArrayList<Item> getItems(){
        return itemList;
    }
    
    public void setItemList(ArrayList<Item> itemList){
        this.itemList = itemList;
    }
    
    public void addItemToShoppingCart(Item item){
        itemList.add(item);
    }
    
    public void removeItemFromShoppingCart(Item item){
        itemList.remove(item);
    }
}

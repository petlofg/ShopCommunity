/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.controller;

import com.webshop.service.ItemService;
import com.webshop.service.UserService;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Petter
 */
public class UserController {

    public static void addItemToShoppingCart() {
        //Itemservice required=!=P!=!=!=!!??P!?!?!?!?!?!?!?!?
        ItemService itemService = new ItemService();
        UserService userService = new UserService();
        throw new UnsupportedOperationException("Not yet implemented");
    }
    
    public static void removeItemFromShoppingCart() {
        throw new UnsupportedOperationException("Not yet implemented");
    }
    
    public static void createUser(HttpServletRequest httpServletRequest) {
        UserService.createUser(httpServletRequest);
    }
}

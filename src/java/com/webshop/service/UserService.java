/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.service;

import javax.servlet.http.HttpServletRequest;
import org.apache.catalina.connector.Request;

/**
 *
 * @author Petter
 */
public class UserService {

    public static void createUser(HttpServletRequest httpServletRequest) {
        Request request;
        System.out.println(httpServletRequest.getSession().getAttribute("name"));
        //throw new UnsupportedOperationException("Not yet implemented");
    }
    
}

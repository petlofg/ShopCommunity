/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.webshop.dao;

import javax.naming.*;
import javax.sql.*;
import java.sql.*;

/**
 *
 * @author Petter
 */
public class DBManager {
    private String foo;
    private int bar;
    
    public DBManager(){}
    
    public void init(){
        try{
            Context ctx = new InitialContext();
            if(ctx == null ) 
                throw new Exception("Boom - No Context");

            DataSource ds = (DataSource)ctx.lookup("java:comp/env/jdbc/TestDB");
            
            if (ds != null) {
                Connection conn = ds.getConnection();

                if(conn != null)  {
                    String foo = "Got Connection "+conn.toString();
                    Statement stmt = conn.createStatement();
                    ResultSet rst = 
                        stmt.executeQuery(
                          "select id, foo, bar from testdata");
                    if(rst.next()) {
                       this.foo=rst.getString("foo");
                       bar=rst.getInt("bar");
                    }
                    conn.close();
                }
            }
         }catch(Exception e) {
             e.printStackTrace();
         }
    }
    
    public String getFoo() { return foo; }
    public int getBar() { return bar;}
}

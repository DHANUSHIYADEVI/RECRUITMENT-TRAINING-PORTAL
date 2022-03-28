//$Id$
package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class LoginAction {
     private String username;
     private String password;
     private String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
    public String execute() {
       if(type=="USER" || type.equals("USER")) {
         String sql="select password from users where name=\""+username+"\"";
         try {
         	Class.forName("com.mysql.jdbc.Driver");
        	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RTP","root","");
        	Statement stmt=conn.createStatement();
        	ResultSet rs=stmt.executeQuery(sql);
    	    if(rs.next()) {
    		    if(rs.getString(1).equals(password) || rs.getString(1)==password) {
    			   return "success";
    		     }
    		     else {
    			      return "invalid";
    		     }
        	}
    	    else {
    		   return "no user";
         	}
         }
        catch(Exception e) {
    	     return "error";
        }
      }
      else {
    	  String sql="select password from admins where name=\""+username+"\"";
    	  try {
    		  Class.forName("com.mysql.jdbc.Driver");
    		  Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RTP","root","");
    		  Statement stmt=conn.createStatement();
    		  ResultSet rs=stmt.executeQuery(sql);
    		  if(rs.next()) {
    			  if(rs.getString(1).contentEquals(password) || rs.getString(1)==password) {
    				  return "admin";
    			  }
    			  else {
    				  return "invalid";
    			  }  
    		  }
    		  else {
    			  return "not_an_admin";
    		   }
    	  }
    	  catch(Exception e) {
    		  return "error";
    	  }
      }
    }
}

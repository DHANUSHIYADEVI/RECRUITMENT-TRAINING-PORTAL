//$Id$
package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisterAction {
    private String username;
    private String password;
    private String emailid;
    private String mobileno;
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
	public String getEmailid() {
		return emailid;
	}
	public void setEmailid(String emailid) {
		this.emailid = emailid;
	}
	public String getMobileno() {
		return mobileno;
	}
	public void setMobileno(String mobileno) {
		this.mobileno = mobileno;
	}
    public String execute() {
    	String query1="select name from users where name=\""+username+"\"";
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RTP","root","");
    		Statement stmt=conn.createStatement();
    		ResultSet rs=stmt.executeQuery(query1);
    		if(rs.next()) {
    			return "username_exists";
    		}
    		else {
    			String query2="insert into users values(?,?,?,?)";
    			PreparedStatement pstmt=conn.prepareStatement(query2);
    			pstmt.setString(1,username);
    			pstmt.setString(2,password);
    			pstmt.setString(3, mobileno);
    			pstmt.setString(4, emailid);
    			pstmt.execute();
    			return "success";
    		}
    	}
    	catch(Exception e) {
     		return "error";
    	}
    }
}

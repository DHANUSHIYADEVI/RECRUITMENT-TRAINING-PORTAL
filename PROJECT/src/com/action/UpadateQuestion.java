//$Id$
package com.action;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class UpadateQuestion {
    private int sno;
    private String qtype;
    private String question;
    private String answer;
    private String trequired;
    private String points;
	public int getSno() {
		return sno;
	}
	public void setSno(int sno) {
		this.sno = sno;
	}
	public String getQtype() {
		return qtype;
	}
	public void setQtype(String qtype) {
		this.qtype = qtype;
	}
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public String getAnswer() {
		return answer;
	}
	public void setAnswer(String answer) {
		this.answer = answer;
	}
	public String getTrequired() {
		return trequired;
	}
	public void setTrequired(String trequired) {
		this.trequired = trequired;
	}
	public String getPoints() {
		return points;
	}
	public void setPoints(String points) {
		this.points = points;
	}
    public String execute() {
    	String sql="insert into questions values(?,?,?,?,?,?)";
    	try {
    		Class.forName("com.mysql.jdbc.Driver");
    		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RTP","root","");
    		PreparedStatement pstmt=conn.prepareStatement(sql);
    		pstmt.setInt(1, sno);
    		pstmt.setString(2, qtype);
    	    pstmt.setString(3, question);
    	    pstmt.setString(4,answer);
    	    pstmt.setString(5,trequired);
    	    pstmt.setString(6,points);
    	    pstmt.execute();
    	}
    	catch(Exception e) {
    		System.out.println("error "+e);
    		return "error";
    	}
    	return "success";
    }
}

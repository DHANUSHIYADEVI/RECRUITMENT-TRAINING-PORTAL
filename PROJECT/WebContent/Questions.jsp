<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
    import="java.sql.Connection, java.sql.Statement, java.sql.ResultSet, java.sql.DriverManager"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <title>RECRUITMENT TRAINING PORTAL</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/jpg" href="favicon.png"/>
  <link rel="stylesheet" href="css/style.css"/>
  <script src="https://code.iconify.design/2/2.0.3/iconify.min.js"></script>
</head>
<body>
<%      
    String sql="select * from questions order by QType";
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/RTP","root","");
    Statement stmt=conn.createStatement();
    ResultSet rs=stmt.executeQuery(sql);
%>
<div class="header">
  <a href="admin_page.jsp" class="header-left">ADMIN <br> <br> <span style="color:violet; font-size:20px;">&#8678; back </span></a>
  <div class="header-right">
    <a href="#" class='fas fa-user-circle'></a>
    <%
      out.println( "<a href=''>"+"</a>"); %>
    <br>
    <a class="logout" href="login.jsp"> log out <span class="iconify" data-icon="mdi:logout"></span> </a>
  </div>
</div>
<div class="divider1"> </div>
<div class="questions">
  <center> 
  <table class="table" border="2">
   <tr id="th"> <td> SNO  </td> <td> Question Type </td> <td> Questions </td> <td> Answers </td> <td> Time Required </td> <td> Points </td> </tr>
     <%
     while(rs.next()){
    	 out.print("<tr> <td>"+rs.getString(1)+"</td>");
    	 out.print("<td>"+rs.getString(2)+"</td>");
    	 out.print("<td>"+rs.getString(3)+"</td>");
    	 out.print("<td>"+rs.getString(4)+"</td>");
    	 out.print("<td>"+rs.getString(5)+"</td>");
    	 out.print("<td>"+rs.getString(6)+"</td> </tr>");
     }
     %>
  <tr id="button1"> <td colspan="6"> <button onclick="show('update')"> Add New Question </button> </td> </tr>  
  <form action="updateQuestion" class="QuestionUpdate" method="POST">
  <tr class="update">
    <td> <input type="number" name="SNO" required/> </td>
    <td> <input type="text" name="QuestionType" autofocus required/> </td>
    <td> <input type="text" name="Question" required/> </td>
    <td> <input type="text" name="Answer" required/> </td>
    <td> <input type="text" name="TimeRequired" required/> </td>
    <td> <input type="int" name="Point" required/> </td>
  </tr>
  <tr class="update">  
  <td colspan="6"> <input type="submit" value="UPDATE"/> </td>
  </tr>
  </form>
  </table>
 </div>

<script>
  function show(type)
  {
       var i=0;
       if(type=='update'){
         document.getElementById("button1").style.visibility="hidden";
         var show=document.getElementsByClassName("update");
         show[0].style.visibility="visible";
         show[1].style.visibility="visible";
       }
  }
</script>
</body>
</html>
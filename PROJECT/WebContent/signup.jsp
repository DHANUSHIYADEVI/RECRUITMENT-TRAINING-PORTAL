<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>RECRUITMENT TRAINING PORTAL</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/jpg" href="favicon.png"/>
  <link rel="stylesheet" href="css/style.css"/>
</head>
<body> 
<div class="box">
  <div class="center">
      <h1> REGISTER </h1>
      <form action="AddNewUser" method="POST"> 
         <div class="txt_field">
           <label> Username<span id="ip">&#42;</span> </label> </br> 
           <input type="text"  onkeydown="check()" placeholder="Enter your name here" name="uname" required>
           <span></span>
         </div>
         <div class="txt_field">
           <label> Email<span id="ip">&#42;</span> </label> </br> 
           <input type="mail" placeholder="Enter email address here"  name="mail_id" required>
           <span></span>
         </div> 
         <div class="txt_field">
           <label> Mobile Number<span id="ip">&#42;</span> </label> </br>
           <input type="text" placeholder="Enter mobile number here" name="mobile_no" pattern="\d{10}"required>
           <span></span>
         </div> 
         <div class="txt_field">
           <label> Date Of Birth:<span id="ip">&#42;</span> </label> </br>
           <input type="text" placeholder="Enter  dob here" name="dob" pattern="\d{2}-\d{2}-\d{4}"required>
           <span></span>
         </div> 
         </br> </br>
         <div> 
         <input type="submit" value="Signup"/>
         <br> <br> <br>
         </div>
       </form>
   </div>
  </div>
</body>
</html>
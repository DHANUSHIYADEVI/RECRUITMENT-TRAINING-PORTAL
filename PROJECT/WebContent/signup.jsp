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
           <input type="text"  onkeydown="check()" placeholder="Enter your name here" name="username" required>
           <span></span>
         </div>
         <div class="txt_field">
           <label> Date of Birth:<span id="ip">&#42;</span> </label> </br> 
           <input type="text" placeholder="YYYY-MM-DD" name="password" pattern="\d{4}-\d{2}-\d{2}" required>
           <span></span>
         </div>
         <div class="txt_field">
           <label> Email<span id="ip">&#42;</span> </label> </br> 
           <input type="email" placeholder="Enter email address here"  name="emailid" required>
           <span></span>
         </div> 
         <div class="txt_field">
           <label> Mobile Number<span id="ip">&#42;</span> </label> </br>
           <input type="text" placeholder="Enter mobile number here" name="mobileno" pattern="\d{10}"required>
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
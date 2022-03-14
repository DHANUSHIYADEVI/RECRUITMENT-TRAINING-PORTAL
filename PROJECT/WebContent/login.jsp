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
      <h1> LOGIN </h1>
      <form action="Login" method="get"> 
         <div class="txt_field">
           <label> Username </label> <br> 
           <input type="text" name="uname" placeholder="Enter your name here" required>
           <span></span>
         </div>
         <div class="txt_field">
           <label> Password </label> <br> 
           <input type="password" name="password" placeholder="DD-MM-YYYY" pattern="\d{2}-\d{2}-\d{4}"  required>
           <span></span>
         </div>
         <br> <br>
         <div class="pass"> <a href="#"> Forgot Password? </a> </div> 
         <input type="submit" value="Login"/>
         <div class="signup_link">
              Not a member? <a href="MoveToSignUp"> Signup </a>
         </div>  
       </form>
   </div>
  </div>
</body>
</html>
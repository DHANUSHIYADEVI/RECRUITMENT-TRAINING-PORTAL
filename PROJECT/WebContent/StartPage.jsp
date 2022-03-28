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
   <h1 class="head"> welcome ${user} Let's start the test :) </h1>
   <div class="placeCenter">
    <center>
     <table class="TestDashboard">
      <tr> <td> Topic </td> <td> Number of Question </td> <td> Total Duration </td> </tr>
      <tr> <td> ${QuestionsBasedOn}  </td> <td> 10 </td> <td> 1 hour 40 minutes </td> </tr>
      <tr> <td colspan="3"> <a href="StartTest?topic=${QuestionsBasedOn}"> START TEST </a> </td> </tr>
     </table>
    </center>
   </div>
</body>
</html>
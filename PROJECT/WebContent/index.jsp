<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
  <title>RECRUITMENT TRAINING PORTAL</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/jpg" href="favicon.png"/>
  <link rel="stylesheet" href="css/style.css"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
   <div class="p-5 bg-success text-white text-center">
         <img id="logo" src="images/logo.png"/>
         <h1>RECRUITMENT TRAINING PORTAL</h1>
         <p> Everyone is an Achiever</p> 
   </div>
   <!--navigation bar-->
   <div class="header">
       <a href="#" class="portal-name">Recruitment Training Portal</a>
       <div class="header-right">
          <a class="active" href="index.jsp">Home</a>
          <a href="#">About Us</a>
          <a href="#"> Progress</a>
          <a href="#"> Settings </a>
           <a href="MoveToLogin">Login/Register </a>
       </div>
   </div>

   <!-- content -->
   <div class="row">
      <div class="column">
         <div class="card">
              <img src="images/c.png">
              <div class="container">
                  <h2>C</h2>
                  <s:form action="ShowStartPage" theme="simple">
                      <p style="display:none;">
                      <s:textfield name="QuestionsBasedOn" value="C"></s:textfield> </p>
                      <p><button class="button">Take Test</button></p>
                  </s:form>
              </div>
         </div>
      </div>
      <div class="column">
         <div class="card">
              <img src="images/c++.png">
              <div class="container">
                  <h2>C++</h2>
                  <s:form action="ShowStartPage" theme="simple">
                      <p style="display:none;">
                      <s:textfield name="QuestionsBasedOn" value="C++"></s:textfield> </p>
                      <p><button class="button">Take Test</button></p>
                  </s:form>
              </div>
         </div>
      </div>
      <div class="column">
         <div class="card">
              <img src="images/java.png">
              <div class="container">
                  <h2>JAVA</h2>
                   <s:form action="ShowStartPage" theme="simple">
                      <p style="display:none;">
                      <s:textfield name="QuestionsBasedOn" value="JAVA"></s:textfield> </p>
                      <p><button class="button">Take Test</button></p>
                  </s:form>
              </div>
         </div>
      </div>
      <div class="column">
         <div class="card">
              <img src="images/python.png">
              <div class="container">
                  <h2>Python</h2>
                   <s:form action="ShowStartPage" theme="simple">
                      <p style="display:none;">
                      <s:textfield name="QuestionsBasedOn" value="PYTHON"></s:textfield> </p>
                      <p><button class="button">Take Test</button></p>
                  </s:form>
              </div>
         </div>
      </div>
      <div class="column">
         <div class="card">
              <img src="images/collapsed.png">
              <div class="container">
                  <h2>Collpased</h2>
                  <s:form action="ShowStartPage" theme="simple">
                      <p style="display:none;">
                      <s:textfield name="QuestionsBasedOn" value="mix"></s:textfield> </p>
                      <p><button class="button">Take Test</button></p>
                  </s:form>
              </div>
         </div>
      </div>
   </div>
</body>
</html>

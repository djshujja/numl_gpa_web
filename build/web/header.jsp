<%-- 
    Document   : header
    Created on : Dec 29, 2020, 4:30:06 PM
    Author     : DjShujja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <title>Shujja Ahmed - 2093</title>
    </head>
   <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <a class="navbar-brand" href="index.jsp">NUML Student Portal</a>

  <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
      <li class="nav-item">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="gpa_choice.jsp">GPA Calculator</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="student_data.jsp">CGPA</a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="student_data.jsp">My Data</a>
      </li>
      
    </ul>
    <div class="form-inline my-2 my-lg-0">
        <% if(session.getAttribute("rollNo") == null){ %>
        <a href="login.jsp" ><button class="btn btn-danger my-2 my-sm-0">Login</button></a>
        <a href="register.jsp" ><button class="btn btn-danger my-2 my-sm-0">Register</button></a>
        <% } else { %>
        <b class="nav-item nav-link text-white">Welcome back <%= session.getAttribute("name").toString() %>!</b>
        <a href="LogoutServlet" ><button class="btn btn-danger my-2 my-sm-0">Logout</button></a>
        <% } %>
    </div>
  </div>
</nav>
    <body>
        <div class="container body" >
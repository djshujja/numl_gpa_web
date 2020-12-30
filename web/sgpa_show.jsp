<%-- 
    Document   : sgpa_show
    Created on : Dec 29, 2020, 9:31:55 PM
    Author     : DjShujja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file='header.jsp' %>
<div class="text-center">
    <h3 class='display-4 text-center mt-5'>Your SGPA = <%= session.getAttribute("total_gpa").toString() %></h3>
    <a><button class="btn btn-primary" >Add More</button></a>
    <a href="student_data.jsp"><button class="btn btn-success" >My Data</button></a>


</div>
<%@include file='footer.jsp' %>

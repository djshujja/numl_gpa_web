<%-- 
    Document   : all_students
    Created on : Dec 21, 2020, 7:30:02 PM
    Author     : DjShujja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.*,com.dao, com.student" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="header.jsp" %>

<%
    if (session.getAttribute("rollNo") == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%
    dao dao = new dao();
    int rollNo = Integer.parseInt(session.getAttribute("rollNo").toString());
    ResultSet cgpa = dao.sgpa(rollNo);
    try {
        while (cgpa.next()) {
%>
<h3 class="display-4 mt-5 text-center"> Your CGPA  = <%= cgpa.getFloat(1)%> </h3>
<% }
                } catch (Exception ex) {
                    System.out.println(ex.toString());
                } %>
<table class="table">
    <thead class="thead-dark">
        <tr>
            <th scope="col">Roll#</th>
            <th scope="col">Subject</th>
            <th scope="col">CH</th>
            <th scope="col">Marks</th>
            <th scope="col">Grade</th>
            <th scope="col">Semester</th>
        </tr>
    </thead>
    <tbody>
        <%
            ResultSet rs = dao.singleStudent(rollNo);
            while (rs.next()) {
        %>
        <tr>
            <th scope="row"> <%= rs.getInt("rollNo")%> </th>
            <td><%= rs.getString("subject")%></td>
            <td><%= rs.getInt("creditHour")%></td>
            <td><%= rs.getFloat("marks")%></td>
            <td><%= rs.getString("grade")%></td>
            <td><%= rs.getString("semester")%></td>
        </tr>
        <% } %>
    </tbody>
</table>


<%@include file="footer.jsp" %>


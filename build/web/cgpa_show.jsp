<%-- 
    Document   : cgpa_show
    Created on : Dec 30, 2020, 12:03:55 AM
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
            <th scope="col">Semester</th>
            <th scope="col">SCGPA</th>
            <th scope="col">Actions</th>
        </tr>
    </thead>
    <tbody>
        <%
            ResultSet rs = dao.sgpa_table(rollNo);
            while (rs.next()) {
        %>
        <tr>
            <th scope="row"> <%= rs.getInt("rollNo")%> </th>
            <td><%= rs.getString("semester")%></td>
            <td><%= rs.getFloat("SGPA")%></td>
            <td><a class="btn btn-danger" href="DeleteSerlvet?rollNo=<%=rs.getInt("rollNo")%>&semester=<%=rs.getString("semester")%>">Delete</a></td>
        </tr>
        <% } %>
    </tbody>
</table>


<%@include file="footer.jsp" %>

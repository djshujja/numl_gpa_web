<%-- 
    Document   : cgpa_show
    Created on : Dec 30, 2020, 12:03:55 AM
    Author     : DjShujja
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.dao" contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
        <% 
            if(session.getAttribute("rollNo") == null){
                response.sendRedirect("login.jsp");
            }
            
            dao dao = new dao();
            int rollNo = Integer.parseInt(session.getAttribute("rollNo").toString());
            ResultSet rs = dao.sgpa(rollNo);
            try{
            while(rs.next()){
            %>
            <b> Your CGPA  = <%= rs.getFloat(1) %> </b>
            <% }} catch(Exception ex) { System.out.println(ex.toString()); } %>
            
<%@include file="footer.jsp" %>


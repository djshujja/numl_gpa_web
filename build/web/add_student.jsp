<%-- 
    Document   : add_student
    Created on : Dec 21, 2020, 7:30:31 PM
    Author     : DjShujja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Enter Student Details</h1>
        <form action="SaveStudent">
            <input required name="name" type="text" placeholder="Enter Student's name.">
            <input required name="department" type="text" placeholder="Enter Student's department.">
            <input required name="rollNo" type="number" placeholder="Enter Student's roll number.">
            <button type="submit">Submit</button>
        </form>
    </body>
</html>

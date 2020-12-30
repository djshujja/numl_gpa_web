<%-- 
    Document   : calulcate_formula
    Created on : Dec 21, 2020, 8:01:56 PM
    Author     : DjShujja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='header.jsp' %>
        <%
            if(session.getAttribute("rollNo") == null){
                response.sendRedirect("login.jsp");
            }
        %>
        <form action="GradeGPAServlet" class="form">
            <div>
                <select name="total_subjects" id="subject_count">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
            </div>
            <div>
                <input  class="form-control" name="semester" required  type="number" placeholder="Enter your semester"/>
            </div>
            <div class="subject form-group">
                <input type="text"  class="form-control" name="subject1" placeholder="Subject 1" required value="OOP" />
                <input type="number"   class="form-control"name="ch1" placeholder="Credit Hour 1" required />
               <select name="grade1"  class="form-control">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject2" placeholder="Subject 2" required value="OOP" />
                <input type="number" name="ch2" placeholder="Credit Hour 2" required />
               <select name="grade2">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject3" placeholder="Subject 3" required value="OOP" />
                <input type="number" name="ch3" placeholder="Credit Hour 3"  />
                <select name="grade3">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject4" placeholder="Subject 4" required value="OOP" />
                <input type="number" name="ch4" placeholder="Credit Hour 4"  />
                <select name="grade4">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject5" placeholder="Subject 5" required value="OOP" />
                <input type="number" name="ch5" placeholder="Credit Hour 5"  />
                <select name="grade5">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject6" placeholder="Subject 6" required value="OOP" />
                <input type="number" name="ch6" placeholder="Credit Hour 6"  />
                <select name="grade6">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject7" placeholder="Subject 7" required value="OOP" />
                <input type="number" name="ch7" placeholder="Credit Hour 7"  />
                <select name="grade7">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <div class="subject">
                <input type="text" name="subject8" placeholder="Subject 8" required value="OOP" />
                <input type="number" name="ch8" placeholder="Credit Hour 8"  />
                <select name="grade8">
                    <option value="A1">A1</option>
                    <option value="A2">A2</option>
                    <option value="A3">A3</option>
                    <option value="B1">B1</option>
                    <option value="B2">B2</option>
                    <option value="B3">B3</option>
                    <option value="C1">C1</option>
                    <option value="C2">C2</option>
                    <option value="D1">D1</option>
                    <option value="F">F</option>
                </select>
            </div>
            <button type="submit">Calculate</button>
        </form>
<%@include file='footer.jsp' %>


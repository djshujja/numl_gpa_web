<%-- 
    Document   : calulcate_formula
    Created on : Dec 21, 2020, 8:01:56 PM
    Author     : DjShujja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file='header.jsp' %>
<%
    if (session.getAttribute("rollNo") == null) {
        response.sendRedirect("login.jsp");
    }
%>

<script>
    window.onload = function () {
        var sub1 = document.getElementById("subject1");
        var sub2 = document.getElementById("subject2");
        var sub3 = document.getElementById("subject3");
        var sub4 = document.getElementById("subject4");
        var sub5 = document.getElementById("subject5");
        var sub6 = document.getElementById("subject6");
        var sub7 = document.getElementById("subject7");
        var sub8 = document.getElementById("subject8");
        var sub9 = document.getElementById("subject9");
        sub2.style.display = "none";
        sub3.style.display = "none";
        sub4.style.display = "none";
        sub5.style.display = "none";
        sub6.style.display = "none";
        sub7.style.display = "none";
        sub8.style.display = "none";


        var subjects = document.getElementById("mySelect");


        subjects.addEventListener('change', () => {
            console.log(subjects.value)
            switch (subjects.value) {
                case '1':
                {
                    sub2.style.display = "none";
                    sub3.style.display = "none";
                    sub4.style.display = "none";
                    sub5.style.display = "none";
                    sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";
                    break;
                }
                case '2':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "none";
                    sub4.style.display = "none";
                    sub5.style.display = "none";
                    sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";

                    break;
                }
                case '3':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "none";
                    sub5.style.display = "none";
                    sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";

                    break;

                }case '4':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "flex";
                    sub5.style.display = "none";
                    sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";
                    break;


                }
                case '5':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "flex";
                    sub5.style.display = "flex";
//                    sub5.style.display = "none";
                    sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";
                    break;


                }
                case '6':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "flex";
                    sub5.style.display = "flex";
                    sub6.style.display = "flex";
//                     sub6.style.display = "none";
                    sub7.style.display = "none";
                    sub8.style.display = "none";

                    break;


                }
                case '7':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "flex";
                    sub5.style.display = "flex";
                    sub6.style.display = "flex";
                    sub7.style.display = "flex";
//                          sub7.style.display = "none";
                    sub8.style.display = "none";

                    break;
                }
                case '8':
                {
                    sub2.style.display = "flex";
                    sub3.style.display = "flex";
                    sub4.style.display = "flex";
                    sub5.style.display = "flex";
                    sub6.style.display = "flex";
                    sub7.style.display = "flex";
                    sub8.style.display = "flex";

                    break;
                }
            }
        })
        console.log(subjects);

    }



</script>
<div class="mt-5">
    <form action="GPAServlet" class="form">
        <div class="form-group row">
            <div class="col-4">
                <h4 class="form-control">Enter Number of Subjects: </h4>
            </div>
            <div class="col-2">
                <select id="mySelect" class="form-control" name="total_subjects">
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


        <!--</div>-->
        <!--<div class="row form-group">-->
            <div class="col-4">
                <h5 class="form-control">Enter Your Semester: </h5>
            </div> 
            <div class="col-2">            
                <!--<input name="semester" class="form-control" required type="number"/>-->
                <select class="form-control" required name="semester">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                    <option value="9">9</option>
                    <option value="10">10</option>

                </select>
            </div>

        </div>
        <div class="subject1 form-group row">
            <h3 class="col">Subject</h3>
            <h3 class="col">Credit Hour</h3>
            <h3 class="col">Marks</h3>
        </div>
        <div id="subject1" class="subject1 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject1" placeholder="Subject 1" required value="" />
            <input class="col-3 mr-auto" type="number" name="ch1" placeholder="Credit Hour 1" required />
            <input class="col-3 mr-auto" type="text" name="marks1" placeholder="Marks 1"  required value="" />
        </div>
        <div id="subject2" class="subject2 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject2" placeholder="Subject 2"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch2" placeholder="Credit Hour 2"  />
            <input class="col-3 mr-auto" type="text" name="marks2" placeholder="Marks 4"   value="" />
        </div>
        <div id="subject3" class="subject3 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject3" placeholder="Subject 3"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch3" placeholder="Credit Hour 3"  />
            <input class="col-3 mr-auto" type="text" name="marks3" placeholder="Marks 4"   value="" />
        </div>
        <div id="subject4" class="subject4 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject4" placeholder="Subject 4"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch4" placeholder="Credit Hour 4"  />
            <input class="col-3 mr-auto" type="text" name="marks4" placeholder="Marks 4"   value="" />
        </div>
        <div id="subject5" class="subject5 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject5" placeholder="Subject 5"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch5" placeholder="Credit Hour 5"  />
            <input class="col-3 mr-auto" type="text" name="marks5" placeholder="Marks 5"   value="" />
        </div>
        <div id="subject6" class="subject6 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject6" placeholder="Subject 6"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch6" placeholder="Credit Hour 6"  />
            <input class="col-3 mr-auto" type="text" name="marks6" placeholder="Marks 6"   value="" />
        </div>
        <div id="subject7" class="subject7 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject7" placeholder="Subject 7"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch7" placeholder="Credit Hour 7"  />
            <input class="col-3 mr-auto" type="text" name="marks7" placeholder="Marks 7"   value="" />
        </div>
        <div id="subject8" class="subject8 form-group row">
            <input class="col-3 mr-auto" type="text" name="subject8" placeholder="Subject 8"  value="" />
            <input class="col-3 mr-auto" type="number" name="ch8" placeholder="Credit Hour 8"  />
            <input class="col-3 mr-auto" type="text" name="marks8" placeholder="Marks 8"   value="" />
        </div>
        <button type="submit" class="btn btn-primary">Calculate</button>
    </form>
</div>
<%@include file='footer.jsp' %>


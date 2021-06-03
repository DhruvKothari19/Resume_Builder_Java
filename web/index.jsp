<%-- 
    Document   : index
    Created on : Apr 26, 2021, 7:06:57 PM
    Author     : Kothari
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resume</title>
        <link rel="stylesheet" href="style2.css">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Raleway:100' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>


    </head>
    <body>
        
            <%@page import="java.lang.*"%>
        <%
            String first_name = request.getParameter("f_name");
            String last_name = request.getParameter("l_name");
            String email = request.getParameter("email_id");
            String phoneno = request.getParameter("phone_no");
            String add = request.getParameter("address");
            String profile = request.getParameter("profile");
            
            
            
            String schoolname  = request.getParameter("school_name");
            String schoolstart  = request.getParameter("school_start");
            String schoolend  = request.getParameter("school_end");
            String schoolmarks  = request.getParameter("school_marks");
            
            String jrcollegename  = request.getParameter("jr_college_name");
            String jrcollegestart  = request.getParameter("jr_college_start");
            String jrcollegeend  = request.getParameter("jr_college_end");
            String jrcollegemarks  = request.getParameter("jr_college_marks");
            
            String srcollegename  = request.getParameter("sr_college_name");
            String srcollegestart  = request.getParameter("sr_college_start");
            String srcollegeend  = request.getParameter("sr_college_end");
            String srcollegemarks  = request.getParameter("sr_college_marks");

            String work1title  = request.getParameter("work1_title");
            String work1specs  = request.getParameter("work1_specs");
            String work1start  = request.getParameter("work1_start");
            String work1end  = request.getParameter("work1_end");

            String work2title  = request.getParameter("work2_title");
            String work2specs  = request.getParameter("work2_specs");
            String work2start  = request.getParameter("work2_start");
            String work2end  = request.getParameter("work2_end");
            
            String work3title  = request.getParameter("work3_title");
            String work3specs  = request.getParameter("work3_specs");
            String work3start  = request.getParameter("work3_start");
            String work3end  = request.getParameter("work3_end");
            
            String work4title  = request.getParameter("work4_title");
            String work4specs  = request.getParameter("work4_specs");
            String work4start  = request.getParameter("work4_start");
            String work4end  = request.getParameter("work4_end");
            
            String skill1  = request.getParameter("skill_1");
            String skill1level  = request.getParameter("skill_1_level");
            
            String skill2  = request.getParameter("skill_2");
            String skill2level  = request.getParameter("skill_2_level");

            String skill3  = request.getParameter("skill_3");
            String skill3level  = request.getParameter("skill_3_level");
            
            String skill4  = request.getParameter("skill_4");
            String skill4level  = request.getParameter("skill_4_level");
            
            String skill5  = request.getParameter("skill_5");
            String skill5level  = request.getParameter("skill_5_level");
            
            String linked_in  = request.getParameter("linkedin");
            String git_hub  = request.getParameter("github");

        

        %>
        

        <button class="btn btn-print btn-sm btn-light" id= "printer">
            <i class="fa fa-print"></i>
            Print
          </button>
    <div class="rela-block page" id="sheet">
        <div class="rela-block top-bar">
            <div class="caps name">
                <div class="abs-center"><%= first_name%>  <%= last_name%></div>
            </div>
        </div>
        <div class="side-bar">
            
            <p><i class="fas fa-map-marker-alt"></i>  <%= add%></p>
            <p><i class="fas fa-phone"></i>  <%= phoneno%></p>
            <p><i class="fas fa-envelope"></i>  <%= email%></p>
            <p><i class="fab fa-linkedin"></i>  <%= linked_in%></p>
            <p><i class="fab fa-github"></i>  <%= git_hub%></p>
            <br>
            <p class="rela-block caps side-header"><i class="fas fa-code"></i>SKILLS</p>
            <p class="rela-block list-thing" id="skill1"><%= skill1%> - <%= skill1level%></p>
            <p class="rela-block list-thing" id="skill2"><%= skill2%> - <%= skill2level%></p>
            <p class="rela-block list-thing" id="skill3"><%= skill3%> - <%= skill3level%></p>
            <p class="rela-block list-thing" id="skill4"><%= skill4%> - <%= skill4level%></p>
            <p class="rela-block list-thing" id="skill5"><%= skill5%> - <%= skill5level%></p>
        </div>
        <div class="rela-block content-container">
            
            <div class="rela-block separator"></div>
            <div class="rela-block caps greyed"><i class="fas fa-user"></i>Profile</div>
            <p class="long-margin" ><%= profile%></p>
            <div class="rela-block caps greyed"><i class="fas fa-briefcase"></i>Experience</div>
    
            <h3 id='end=13'>Job #1</h3>
            <p class="light" id='work1'><%= work1title%></p>
            <p class="justified"><%= work1specs%></p>
            <div class="dates">
                <p class="justified">Start Date- <%= work1start%></p>  
                <p class="justified" id="end13">End Date- <%= work1end%></p> 
            </div>
            <div id='end14'>
                <h3>Job #2</h3>
                <p class="light" ><%= work2title%></p>
                <p class="justified"><%= work2specs%></p>
                <div class="dates">
                    <p class="justified">Start Date- <%= work2start%></p>  
                    <p class="justified"id='work2'>End Date- <%= work2end%></p> 
                </div>
            </div>

            <div id="end15">
                <h3>Job #3</h3>
                <p class="light" id='work3'><%= work3title%></p>
                <p class="justified"><%= work3specs%></p>
                <div class="dates">
                    <p class="justified">Start Date- <%= work3start%></p>  
                    <p class="justified" id="end13">End Date- <%= work3end%></p> 
                </div>
            </div>
           
            
    
            

            <div class="rela-block caps greyed"><i class="fas fa-graduation-cap"></i>Education</div>
            <h3>School</h3>
            <p class="light">INSTITUITION NAME - <%= schoolname%></p>
            <p class="justified">Start Date - <%= schoolstart%></p>
            <p class="justified" id="end1">End Date- <span id="endschool"><%= schoolend%></span></p>
            <p class="light" id="end2">Percentage in 10th -<schoolmarks%></p>

            <h3 id="end11">JR COLLEGE</h3>
            <p class="light" id="end3">INSTITUITION NAME - <%= jrcollegename%></p>
            <p class="justified" id="end4">Start Date - <%= jrcollegestart%> 
            <p class="justified" id="end5">End Date- <span><%= jrcollegeend%></span></p>
            <p class="light" id="end6">Percentage in 12th -<%= jrcollegemarks%></p>

            <h3 id="end12">DEGREE COLLEGE</h3>
            <p class="light" id="end7">INSTITUITION NAME - <%= srcollegename%></p>
            <p class="justified" id="end8">Start Date - <%= srcollegestart%>
            <p class="justified" id="end9">End Date- <span><%= jrcollegeend%></span></p>
            <p class="light" id="end10">Percentage/CGPA (Avg) -<%= srcollegemarks%></p>
        </div>
    </div>

    
<script>
    if(document.getElementById('skill1').textContent==" - Beginner"){
        document.getElementById("skill1").style.visibility = "hidden";
    }
    if(document.getElementById('skill2').textContent==" - Beginner"){
        document.getElementById("skill2").style.visibility = "hidden";
    }
    if(document.getElementById('skill3').textContent==" - Beginner"){
        document.getElementById("skill3").style.visibility = "hidden";
    }
    if(document.getElementById('skill4').textContent==" - Beginner"){
        document.getElementById("skill4").style.visibility = "hidden";
    }
    if(document.getElementById('skill5').textContent==" - Beginner"){
        document.getElementById("skill5").style.visibility = "hidden";
    }
    if(document.getElementById('end1').textContent=="End Date- null"){
        document.getElementById("end1").style.display = "none";
        document.getElementById("end2").style.display = "none";
        document.getElementById("end3").style.display = "none";
        document.getElementById("end4").style.display = "none";
        document.getElementById("end5").style.display = "none";
        document.getElementById("end6").style.display = "none";
        document.getElementById("end7").style.display = "none";
        document.getElementById("end8").style.display = "none";
        document.getElementById("end9").style.display = "none";
        document.getElementById("end10").style.display = "none";
        document.getElementById("end11").style.display = "none";
        document.getElementById("end12").style.display = "none";

    }
    if(document.getElementById('end5').textContent=="End Date- null"){
        document.getElementById("end6").style.display = "none";
        document.getElementById("end7").style.display = "none";
        document.getElementById("end8").style.display = "none";
        document.getElementById("end9").style.display = "none";
        document.getElementById("end10").style.display = "none";
        document.getElementById("end12").style.style.display = "none";
    }
    if(document.getElementById('end9').textContent=="End Date- null"){
        document.getElementById("end9").style.display = "none";
        document.getElementById("end10").style.display = "none";
    }

    if(document.getElementById('work2').textContent=="End Date- "){
        document.getElementById("end14").style.display = "none";
        document.getElementById("end15").style.display = "none";
        document.getElementById("end16").style.display = "none";
    }

    window.onload = function(){
        
    document.getElementById("printer").addEventListener("click", () =>{
        const resumepdf = this.document.getElementById("sheet");
        var opt = {
        filename:     'resume.pdf',
        jsPDF:        { unit: 'mm', format: [400,500], orientation: 'portrait' }
            };
        html2pdf().set(opt).from(resumepdf).save();
    });
}


</script>
</body>
</html>

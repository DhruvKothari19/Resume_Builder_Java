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
        <link rel="stylesheet" href="style3.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.2/html2pdf.bundle.min.js"></script>

    </head>
    <body class="A4">
        
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
            <div class="sheet" id="sheet">

              <div class="two-column resume">
                <section class="resume_section resume_header">
                  <div class="resume__content">
                    <h1><b><%= first_name%>  <%= last_name%></b></h1>
                    <div class="info-item"><span class="info-label"><i class="fa fa-location-arrow"></i></span><span class="info-text">
                        <%= add%>  </span></div>
                    <div class="info-item"><span class="info-label"><i class="fa fa-envelope"></i></span><span class="info-text"><%= email%></span></div>
                    <div class="info-item"><span class="info-label"><i class="fa fa-phone"></i></span><span class="info-text"><%= phoneno%></span></div>
                  </div>
                </section>
                <div class="resume__columns">
                  <div class="resume__main">
                    <section class="resume_section resume_summary">
                      <div class="resume__content">
                        <div class="resume__section-title"><i class="fa fa-pencil-square-o"></i>
                          <h2>Professional Summary</h2>
                        </div>
                        <div class="other">
                          <div class="other-info">
                            <p>
                                <%= profile%>
                            </p>
                          </div>
                        </div>
                      </div>
                    </section>
                    <section class="resume_section resume_experience">
                      <div class="resume__content">
                        <div class="resume__section-title"><i class="fa fa-briefcase"></i>
                          <h2>Employment History</h2>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= work1title%>
                           
                          </div>
                          <div class="xp-date"><%= work1start%> – <%= work1end%></div>
                          <div class="xp-detail">
                              <%= work1specs%>
                          </div>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= work2title%>
                           
                          </div>
                          <div class="xp-date"><%= work2start%> – <%= work2end%></div>
                          <div class="xp-detail">
                              <%= work2specs%>
                          </div>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= work3title%>
                           
                          </div>
                          <div class="xp-date"><%= work3start%> – <%= work3end%></div>
                          <div class="xp-detail">
                              <%= work3specs%>
                          </div>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= work4title%>
                           
                          </div>
                          <div class="xp-date"><%= work4start%> – <%= work4end%></div>
                          <div class="xp-detail">
                              <%= work4specs%>
                          </div>
                        </div>
                      </div>
                    </section>
                    <section class="resume_section resume_experience">
                      <div class="resume__content">
                        <div class="resume__section-title"><i class="fa fa-briefcase"></i>
                          <h2>Education History</h2>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= schoolname%>
                           
                          </div>
                          <div class="xp-date"><%= schoolstart%> – <%= schoolend%></div>
                          <div class="xp-detail">
                              <%= schoolmarks%>
                          </div>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= jrcollegename%>
                           
                          </div>
                          <div class="xp-date"><%= jrcollegestart%> – <%= jrcollegeend%></div>
                          <div class="xp-detail">
                              <%= jrcollegemarks%>
                          </div>
                        </div>
                        <div class="xp-item">
                          <div class="xp-job">
                            <%= srcollegename%>
                           
                          </div>
                          <div class="xp-date"><%= jrcollegestart%> – <%= srcollegeend%></div>
                          <div class="xp-detail">
                              <%= srcollegemarks%>
                          </div>
                        </div>                        
                      </div>
                    </section>
                  </div>
                    
                  <div class="resume__side">
                    <section class="resume_section resume_skills">
                      <div class="resume__content">
                        <div class="resume__section-title"><i class="fa fa-align-center"></i>
                          <h2>Skills</h2>
                        </div>
                        <div class="resume__text">
                          <div class="extra">
                            <div class="extra-info" ><%= skill1%>:<br/></div>
                            <div class="extra-info" id="skill1"><%= skill1level%><br/></div>
                            <div class="extra-details">
                              <div class="extra-details__progress" style="width:90%" id="skill1line"></div>
                            </div>
                          </div> 
                          <div class="extra" id="2">
                            <div class="extra-info" ><%= skill2%>:<br/></div>
                            <div class="extra-info" id="skill2"><%= skill2level%><br/></div>
                            <div class="extra-details">
                              <div class="extra-details__progress" style="width:90%" id="skill2line"></div>
                            </div>
                          </div>
                          <div class="extra">
                            <div class="extra-info" ><%= skill3%>:<br/></div>
                            <div class="extra-info" id="skill3"><%= skill3level%><br/></div>
                            <div class="extra-details">
                              <div class="extra-details__progress" style="width:90%" id="skill3line"></div>
                            </div>
                          </div> 
                          <div class="extra">
                            <div class="extra-info" ><%= skill4%>:<br/></div>
                            <div class="extra-info" id="skill4"><%= skill4level%><br/></div>
                            <div class="extra-details">
                              <div class="extra-details__progress" style="width:90%" id="skill4line"></div>
                            </div>
                          </div>
                          <div class="extra">
                            <div class="extra-info" ><%= skill5%>:<br/></div>
                            <div class="extra-info" id="skill5"><%= skill5level%><br/></div>
                            <div class="extra-details">
                              <div class="extra-details__progress" style="width:90%" id="skill5line"></div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </section>
                  </div>
                </div>
              </div>
            </div>
<script>
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

    //skills
    //Beginner
    if(document.getElementById('skill1').textContent=="Beginner"){
      document.getElementById("skill1line").style.width="33%";
      document.getElementById("skill1").style.visibility = "hidden";
    }
    if(document.getElementById('skill2').textContent=="Beginner"){
      document.getElementById("skill2line").style.width="33%";
      document.getElementById("skill2").style.visibility = "hidden";
    }
    if(document.getElementById('skill3').textContent=="Beginner"){
      document.getElementById("skill3line").style.width="33%";
      document.getElementById("skill3").style.visibility = "hidden";
    }
    if(document.getElementById('skill4').textContent=="Beginner"){
      document.getElementById("skill4line").style.width="33%";
      document.getElementById("skill4").style.visibility = "hidden";
    }
    if(document.getElementById('skill5').textContent=="Beginner"){
      document.getElementById("skill5line").style.width="33%";
      document.getElementById("skill5").style.visibility = "hidden";
    }

    //Intermediate
    if(document.getElementById('skill1').textContent=="Intermediate"){
      document.getElementById("skill1line").style.width="62%";
      document.getElementById("skill1").style.visibility = "hidden";
    }
    if(document.getElementById('skill2').textContent=="Intermediate"){
      document.getElementById("skill2line").style.width="62%";
      document.getElementById("skill2").style.visibility = "hidden";
    }
    if(document.getElementById('skill3').textContent=="Intermediate"){
      document.getElementById("skill3line").style.width="62%";
      document.getElementById("skill3").style.visibility = "hidden";
    }
    if(document.getElementById('skill4').textContent=="Intermediate"){
      document.getElementById("skill4line").style.width="62%";
      document.getElementById("skill4").style.visibility = "hidden";
    }
    if(document.getElementById('skill5').textContent=="Intermediate"){
      document.getElementById("skill5line").style.width="62%";
      document.getElementById("skill5").style.visibility = "hidden";
    }

    //ADVANCED
    if(document.getElementById('skill1').textContent=="Advanced"){
      document.getElementById("skill1line").style.width="93%";
      document.getElementById("skill1").style.visibility = "hidden";
    }
    if(document.getElementById('skill2').textContent=="Advanced"){
      document.getElementById("skill2line").style.width="93%";
      document.getElementById("skill2").style.visibility = "hidden";
    }
    if(document.getElementById('skill3').textContent=="Advanced"){
      document.getElementById("skill3line").style.width="93%";
      document.getElementById("skill3").style.visibility = "hidden";
    }
    if(document.getElementById('skill4').textContent=="Advanced"){
      document.getElementById("skill4line").style.width="93%";
      document.getElementById("skill4").style.visibility = "hidden";
    }
    if(document.getElementById('skill5').textContent=="Advanced"){
      document.getElementById("skill5line").style.width="93%";
      document.getElementById("skill5").style.visibility = "hidden";
    }
  
//
if(document.getElementById('2').textContent==":"){
        document.getElementById("2").style.visibility = "hidden";
    }


</script>
    </body>
</html>
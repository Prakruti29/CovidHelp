<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header id="header" class="header">
    <div class="header-nav">
      <div class="header-nav-wrapper navbar-scrolltofixed bg-white">
        <div class="container">
          <nav id="menuzord-right" class="menuzord orange bg-white">
           <!--<a class="menuzord-brand" href="javascript:void(0)">  --> 
              <img src="/CovidHelp/resources/images/covidlogo.JPG" alt="">
       
            <ul class="menuzord-menu">
            
              <li class="active"><a href="#home">What is COVID?</a>
                <ul class="dropdown">
                  <li><a href="/CovidHelp/user/bgcovid">Backround about COVID</a>
                    
                  </li>
                  <li><a href="/CovidHelp/user/covid">How can covid affect you?</a>
                    
                  </li>
                      
                  
                </ul>
              </li>
              <li class="active"><a href="https://www.mohfw.gov.in/pdf/UserManualCitizenRegistration&AppointmentforVaccination.pdf" target="_blank">Get Vaccinated</a>
                    
                </li>
                      
                         </nav>
        </div>
      </div>
    </div>
  </header>
</body>
<style>
img
{
	height:100px;
	width:150px;
}
</style>

</html>
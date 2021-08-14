<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
   
    <%@include file="core.jsp" %>
    
     
<!DOCTYPE html>
<html dir="ltr" lang="en">

<!-- Mirrored from resources/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Feb 2020 12:22:30 GMT -->
<head>


<body>
<div id="wrapper" class="clearfix">
  <!-- preloader -->
  <!-- <div id="preloader">
    <div id="spinner">
      <div class="preloader-dot-loading">
        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
      </div>
    </div>
    
  </div>
   -->
  <!-- Header -->
  <%@include file="userheader.jsp" %>
  <!-- Start main-content -->
  <div class="main-content">
    <!-- Section: inner-header -->
   <center> <nav>
  </nav>
</center>
    
    <section>
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-md-push-3">
           <center><h4 class="text-theme-colored font-weight-600 font-25"> SELECT CITY</h4></center>
            
            
            
              <div class="form-group mb-20">
                      <select class="form-control" id="state">
                      <option value="" disabled selected>Select your option</option>
                      <option value="Ajmer">Ajmer</option>
                      	<option value="Alwar">Alwar</option>
                         <option value="Barmer">Barmer</option>
                         <option value="Ganganagar">Ganganagar</option>
                         <option value="Jaipur">Jaipur</option>
                          <option value="Jaisalmer">Jaisalmer</option>
                          <option value="Jodhpur">Jodhpur</option>
                          <option value="Kota">Kota</option>    
                   <option value="Nagaur">Nagaur</option>
                          <option value="Pali">Pali</option>
                          <option value="Udaipur">Udaipur</option>
                         </select>
                    </div>
                    
                                 <div class="form-group">
                  
                  <button type="submit"  id="submit" class="btn btn-block btn-dark btn-theme-colored btn-sm mt-20 pt-10 pb-10">Submit</button>
                </div>
              
              
          <div id="div1" style="display:none">
            
            <table id="table" border="2">
            	<tr>
            		<th>Hospital name</th>
            		<th>District</th>
            		<th>Contact</th>
            		<th colspan="3">General Bed</th>
            		<th colspan="3">Oxygen Bed</th>        
            		<th colspan="3">Ventilator Bed</th>
            		<th colspan="3">ICU Bed</th>        
            		    		
            	</tr>
            	<tr>
            		<th></th>
            		<th></th>
            		<th></th>
            		<th>Total</th>
            		<th>Occupied</th>
            		<th>Available</th>
            		<th>Total</th>
            		<th>Occupied</th>
            		<th>Available</th>
            		<th>Total</th>
            		<th>Occupied</th>
            		<th>Available</th>
            		<th>Total</th>
            		<th>Occupied</th>
            		<th>Available</th>
            		
            	</tr>
            </table>
            </div>
            <div id="message"></div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->
 <br><br><br><br><br><br>
  <!-- Footer -->
  <footer id="footer" class="footer bg-black-222">
      <div class="row mt-10">
        
        <%@include file="userfooter.jsp" %>
      </div>
    </div>
      </footer>
  
    <a class="scrollToTop" href="#"><i class="fa fa-angle-up"></i></a>
</div>
<!-- end wrapper -->

<!-- Footer Scripts -->
<!-- JS | Custom script for all pages -->
<script src="/CovidHelp/resources/js/custom.js"></script>

</body>
<style type="text/css">
table {
            font-size: 12px;
            height: 100%;
            margin-left:-250px;
        }
td {
           
            text-align: center;
            padding: 10px;
            width:800px;
}
th{
text-align:center;
width:900px;
font-size:12px;
 padding: 10px;
}
</style>
<script type="text/javascript" defer>

document.getElementById("submit").addEventListener("click",displayDetails);
//document.getElementById("table").innerHTML="";
var info;
var table;
function displayDetails()
{
	
var details=document.getElementById("state");
if(details.value=="")
	{
		alert("Please select city");	
	}
else{
document.getElementById("div1").style.display = "";
//console.log(details.value);
fetch("https://api.covidbedsindia.in/v1/storages/608983ed03eef39bb4d05a77/Rajasthan")
.then(response => response.json())
.then(data => {
info=data;
//console.log(data)
});
$('td').remove();
for(var attributename in info){
		
	 table = $("<tr></tr>");
	 if(info[attributename]["DISTRICT"]==details.value){
     table.append("<tr><td>" + info[attributename]["HOSPITAL_NAME"] + "</td>");
     table.append("<td>" + info[attributename]["DISTRICT"] + "</td>");
     table.append("<td>" + info[attributename]["HOSPITAL_HELPLINE_NO"] + "</td>");
     table.append("<td>" + info[attributename]["GENERAL_BEDS_TOTAL"] + "</td>");
     table.append("<td>" + info[attributename]["GENERAL_BEDS_OCCUPIED"] + "</td>");
     table.append("<td>" + info[attributename]["GENERAL_BEDS_AVAILABLE"] + "</td>");
     table.append("<td>" + info[attributename]["OXYGEN_BEDS_TOTAL"] + "</td>");
     table.append("<td>" + info[attributename]["OXYGEN_BEDS_OCCUPIED"] + "</td>");
     table.append("<td>" + info[attributename]["OXYGEN_BEDS_AVAILABLE"] + "</td>");
     table.append("<td>" + info[attributename]["VENTILATOR_BEDS_TOTAL"] + "</td>");
     table.append("<td>" + info[attributename]["VENTILATOR_BEDS_OCCUPIED"] + "</td>");
     table.append("<td>" + info[attributename]["VENTILATOR_BEDS_AVAILABLE"] + "</td>");
     table.append("<td>" + info[attributename]["ICU_BEDS_TOTAL"] + "</td>");
     table.append("<td>" + info[attributename]["ICU_BEDS_OCCUPIED"] + "</td>");
     table.append("<td>" + info[attributename]["ICU_BEDS_AVAILABLE"] + "</td></tr>");
     $("#table").append(table);
	 }
	 
}

}
}
</script>           
	     
        
        <!-- Mirrored from resources/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Feb 2020 12:22:30 GMT -->
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<!-- Mirrored from resources/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Feb 2020 12:22:30 GMT -->
<head>

<%@include file="core.jsp" %></head>
<body class="">
<div id="wrapper" class="clearfix">
  <!-- preloader -->
  <div id="preloader">
    <div id="spinner">
      <div class="preloader-dot-loading">
        <div class="cssload-loading"><i></i><i></i><i></i><i></i></div>
      </div>
    </div>
    <div id="disable-preloader" class="btn btn-default btn-sm">Disable Preloader</div>
  </div>
  
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

							
								<div class="form-group mb-20">
									<h1>Covid-19</h1>
									<p id="s1">COVID-19 is the disease caused by the novel
										coronavirus, SARS-CoV-2 .SARS stands for Severe Acute
										Respiratory Syndrome. </p>
								<h2>Background information about COVID</h2>
						<p id="s1">COVID	disease is an infection caused by a coronavirus. There are
										many types of coronavirus. Some affect the throat and the
										lungs.Illnesses from viruses range from the common cold and
										flu-like illnesses, to more severe diseases such as severe flu
										and pneumonia. <br><br>Pneumonia is also commonly caused by bacteria.
										Antibiotics only treat pneumonia caused by bacteria. Usual
										antibiotics do not treat coronavirus. You may have been given
										antibiotics if you were very unwell in case there was also a
										bacterial infection. The virus causing COVID is new and was
										first recognised in China in December 2019. It spreads easily
										between humans by droplets in the air caused by coughing and
										sneezing. Some people have had very severe disease. However,
										others may not be aware they have had it. Scientists and
										doctors are trying to work out why it affects people so
										differently.</p>

								</div>
							




							<div class="clear text-center pt-10">
            
              </div>
              
                      </div>
          </div>
        </div>
      </div>
    </section>
  </div>
  <!-- end main-content -->

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
<style>
.id1
{
	text-align:right;
}
.l1
{
	position:absolute;
	top:390px;
	left:280px;
}
#n1
{
	text-align:center;
	
}
#s1
{
 font-size:15px;
}
</style>
<script type="text/javascript">
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    format: 'LT'
                });
            });
           
        </script>
        <!-- Mirrored from resources/form-login-style1.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Feb 2020 12:22:30 GMT -->
</html>
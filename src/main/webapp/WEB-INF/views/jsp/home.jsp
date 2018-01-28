<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
    
    
   
    <head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/materializeLib/css/materialize.min.css"  media="screen,projection"/>

      <style>
    	 .page-footer {
    	  color: #fff;
	      background-color: #44aed8;
    	  bottom: 0;
    	  left: 0;
    	  width: 100%;
	      position: absolute;
	      padding-bottom: 0;
    	}

    	


    	.cbname .cbnametooltip {
    visibility: hidden;
    width: 250px;
    background-color: skyblue;
    color: #fff;
    text-align: center;
    border-radius: 6px;
    padding: 1px 0;
     top: -5px;
    left: 105%;

    /* Position the tooltip */
    position: absolute;
    z-index: 1;
}
    	.cbname:hover .cbnametooltip{
    		visibility: visible;
    	}



    	.formcontents{
    		width: 300px;
    		height: 30px;
    		margin-top: 120px;
    		margin-left: 500px;
    		margin-right: 400px;



    	}

		

		nav {
    	color: #fff;
    	background-color: #0789c4;
    	width: 100%;
    	height: 56px;
    	line-height: 56px;
		}	


		

	 </style>

      <!--Let browser know website is optimized for mobile-->
      <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>



	<body>


<!-- Header Nav Bar -->
		<nav>
    <div class="nav-wrapper">
      <a href="http://www.yodlee.com" class="brand-logo right" target="_blank">
      	 <img src="${pageContext.request.contextPath}/resources/materializeLib/images/env_yod_logo.png" width=130 height=58/> 
      </a>
      <ul class="left hide-on-med-and-down"> 
        <li class="active"><a href="#">Label Tool</a></li>
        <li><a href="http://172.18.25.162:2080/YOC/Tracker/software_inventory/stage.php" target="_blank">Stage Inventory</a></li>
        <li><a href="http://172.18.25.162:2080/YOC/Tracker/software_inventory/prod.php" target="_blank">Prod Inventory</a></li>
      </ul>
    </div>
  </nav>


<!-- Option Menu -->

<div class="formcontents">

<form:form method="post" class="col s12" action="${pageContext.request.contextPath}/register" onsubmit="return validateForm()" >
<div class="input-field col s12 m6 l3 xl3">
    <select class="env" name="env">
      <option value="env" disabled selected>Choose Environment</option>
      <option value="Stage" data-icon="${pageContext.request.contextPath}/resources/materializeLib/images/env_yod_logo.png" class="circle">Stage</option>
      <option value="Prod" data-icon="${pageContext.request.contextPath}/resources/materializeLib/images/env_yod_logo.png" class="circle">Prod</option>
    </select>
  </div>

  <div class="input-field col s12">
    <select class="cgroup" name="cobGroup">
      <option value="" disabled selected>Choose CobrandGroup</option>
      <option value="11CG">11CG</option>
      <option value="13CG">13CG</option>
      <option value="Amex">Amex</option>
    </select>
  </div>

  <div class="cbname">
  <div class="row">
        <div class="input-field col s12">
        	<span class="cbnametooltip">Please Enter Any Search Pattern here...</span>
          <input name="cobName" id="cobName" type="text" class="validate">
          <label for="Cobrand Name">Cobrand Name</label>
        </div>
    </div>

<div class="vip">
  <div class="row">
        <div class="input-field col s12">
          <input name="vip" id="vip" type="text" class="validate">
          <label for="VIP">VIP</label>
        </div>
    </div>



<button class="btn waves-effect waves-light" type="submit" name="action" ">Get Labels
    <i class="material-icons right">get_app</i>
  </button>
 </form:form> 

</div>








		<footer class="page-footer">

			<marquee>Design and Developed by Hardik Patel. Please reach out to Deployment Team if you are facing any issues here.</marquee>

          
          </div>
        </footer>

      <!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/materializeLib/js/materialize.min.js"></script>
      <script type="text/javascript">
      	$(document).ready(function() {
		    $('select').material_select();
	  	});
      </script>

      <script>

function validateForm() {
    var x = document.forms["myForm"]["cobname"].value;
    if (x == "") {
        alert("Name must be filled out");
        return false;
    }

    /* var y = document.forms["myForm"]["vip"].value;

     if ((y.KeyChar >= 48 && y.KeyChar <= 57) || y.KeyChar == 46)
            {
                return true;
            }
            else
            {
                alert("vip must be filled out");
        return false;
            } */


}
</script>

    </body>
    
    
</html>

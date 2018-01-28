   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>   

<html>

<h1> Labels </h1>

<head>
      <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/resources/materializeLib/css/materialize.min.css"  media="screen,projection"/>

</head>


<body>


<table class="responsive-table">
        <thead>
          <tr>
              <th>Name</th>
              <th>Item Name</th>
              <th>Item Price</th>
          </tr>
        </thead>

        <tbody>
          <tr>
          	
            <td><c:out value="${env}"></c:out></td>
            <td><c:out value="${cobGroup}"></c:out></td>
            <td><c:out value="${cobName}"></c:out></td>
            <td><c:out value="${vip}"></c:out></td>
          </tr>
          <tr>
            <td>Alan</td>
            <td>Jellybean</td>
            <td>$3.76</td>
          </tr>
          <tr>
            <td>Jonathan</td>
            <td>Lollipop</td>
            <td>$7.00</td>
          </tr>
        </tbody>
      </table>

<!--Import jQuery before materialize.js-->
      <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
      <script type="text/javascript" src="${pageContext.request.contextPath}/resources/materializeLib/js/materialize.min.js"></script>
      <script type="text/javascript">
      	$(document).ready(function() {
		    $('select').material_select();
	  	});
      </script>


</body>

</html>
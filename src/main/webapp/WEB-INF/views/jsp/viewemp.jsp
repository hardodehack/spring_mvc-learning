  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
  
  <html>
<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th></tr>  
   <c:forEach var="emp" items="${list}">   
   <tr>  
   <td>${emp.cobname}</td> 
   </tr>  
   </c:forEach>  
   </table> 
   
   
   </html>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Custom Login Page</title>

  <style type="text/css">
     .failed{
            color: red;
            }
  </style>

</head>
<body>

<h3>My Custom Login Page</h3>

   <form:form action="${pageContext.request.contextPath}/authenticateTheUser"
              method="POST">
              
          <!-- Check for Login Error -->
          
          <c:if test="${param.error !=null}">
          
             <i class="failed">Sorry! You entered invalid username/passwrod.</i>
          
          </c:if>
              
          <p>
              User Name: <input type="text" name="username">
          </p> 
          
          <p>
               Password: <input type="text" name="password">
          </p>    
   
          <input type="submit" value="Login">
   </form:form>
   
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

   <%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
   <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>MVC Registration Form</h2>
<mvc:form modelAttribute="user" action="result.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="FName">Name</mvc:label></td>
	        <td><mvc:input path="FName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="LName">Last Name</mvc:label></td>
	        <td><mvc:input path="LName" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="DMACCID">DMACCID</mvc:label></td>
	        <td><mvc:input path="DMACCID" /></td>
	    </tr>
   	    <tr>
	        <td><mvc:label path="Major">Major</mvc:label></td>
	        <td><mvc:input path="Major" /></td>
	    </tr>
        <tr>
            <td><mvc:label path="campus">Campus</mvc:label></td>
            <td><mvc:select path="campus" items="${campuses}" /></td>
        </tr>   
        <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAll.mvc">View all Users</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix="mvc" %>
<%@ page isELIgnored="false" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Spring MVC Form Handling</title>
</head>
<body>
<h2>Race Information Form</h2>
<mvc:form modelAttribute="raceInfo" action="raceInfoResult.mvc">
	<table>
	    <tr>
	        <td><mvc:label path="date">Date of Race (MM/DD/YYYY)</mvc:label></td>
	        <td><mvc:input path="date" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="city">City</mvc:label></td>
	        <td><mvc:input path="city" /></td>
	    </tr>
	    <tr>
	        <td><mvc:label path="state">State (abbreviation)</mvc:label></td>
	        <td><mvc:input path="state" /></td>
	    </tr>
	    <tr>
            <td><mvc:label path="raceType">Type of Race</mvc:label></td>
            <td><mvc:select path="raceType" items="${races}" /></td>
        </tr>
	    <tr>
	        <td colspan="2">
                <input type="submit" value="Submit" />
	        </td>
	    </tr>
	</table>  
</mvc:form>
<a href = "viewAllRaceInfo.mvc">View all Races</a>
</body>
</html>
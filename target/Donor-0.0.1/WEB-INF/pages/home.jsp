<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %> 

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blood Bank</title>
</head>
<body>
Blood Donation

<h1>Welcome to blood donation camp</h1>
<!-- Name : <input type="text" name="name" ><br>
Blood Group:<br><input type="radio"	 name="bg" value="A+">A+<br>
<input type="radio"	 name="bg" value="A-">A-<br>
<input type="radio"	 name="bg" value="B+">B+<br>
<input type="radio"	 name="bg" value="B-">B-<br>
<input type="radio"	 name="bg" value="AB+">AB+<br>
<input type="radio"	 name="bg" value="AB-">AB-<br>
<input type="radio"	 name="bg" value="O+">O+<br>
<input type="radio"	 name="bg" value="O-">O-<br>
<button type="submit" value="submit" name="Submit">Submit</button><br> -->


<%-- Employee Registration form
<sf:form method="POST" modelAttribute="employee" action="">
	Emp id: <sf:input path="id"/> <sf:errors path="id"/>	<br>
	Emp name: <sf:input path="name"/> <sf:errors path="name"/>	<br>
	Emp email: <sf:input path="email"/> <sf:errors path="email"/>	<br>
	<input type="submit" value="Register">

</sf:form> --%>

<sf:form method="POST" modelAttribute="donor" action="">
<table>
<tr>
	<td>Id:</td>
	<td><sf:input path="id"/><sf:errors path="id"/></td>
</tr>
<tr>
	<td>Name:</td>
	 <td><sf:input path="name"/><sf:errors path="name"/>
	 </td>
</tr>
<tr>
	<td>Blood Group:</td>
	<td> <sf:input path="bloodgroup"/><sf:errors path="bloodgroup"/>
	</td>
	</tr>
	<tr>
		<td><input type="submit" value="Register"></td>
	</tr>
<%-- 	<br><sf:radiobutton path="bg" value="A+ve"/>A+ve --%>
	<%-- <sf:radiobutton path="bg" value="A-ve"/>
	<br><sf:radiobutton path="bg" value="B+ve"/>
	<sf:radiobutton path="bg" value="B-ve"/>
	<br><sf:radiobutton path="bg" value="AB+ve"/>
	<sf:radiobutton path="bg" value="AB-ve"/>
	<br><sf:radiobutton path="bg" value="O+ve"/>
	<sf:radiobutton path="bg" value="O-ve"/> --%>
	</table>	
</sf:form>

</body>
</html>
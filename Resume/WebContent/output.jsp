<%@page import="com.cg.servelet.model.resume.Resume"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<style>
p{
border:5px solid black 
}
</style>
<p>
<meta charset="ISO-8859-1">
<title>Resume</title>
</head>
<body>
<%
	Resume resume=(Resume)request.getAttribute("ResumeModel");
%>
<center>
<h1><u>MY Resume</u></h1>
<h3> <%=resume.getFirstName()%> <%=resume.getLastName()%></h3>

<h5> <%=resume.getAddress()%> </h5>
</center>

<div style="background-color:gray;color:white;padding:0.5px;">
<h2><u>CARRER OBJECTIVE</u></h2>
</div>
<td><h3> <%=resume.getDescription()%> </h3></td>

<div style="background-color:gray;color:white;padding:0.5px;">
<h2><u>ACADEMIC QUALIFICATION</u></h2>
</div>
<<h3> <%=resume.getHighestQualification()%> </h3>

<div style="background-color:gray;color:white;padding:0.5px;">
<h2><u>Skills</u></h2>
</div>

<ul>
<%for(String skills:resume.getSkills()){
	%><%=skills %>&nbsp&nbsp&nbsp<% 
			}%>
</ul>

<div style="background-color:gray;color:white;padding:0.5px;">
<h2><u>Personal Details</u></h2>
</div>
<b><h3><li>Gender: <%=resume.getGender()%> 
<li>Hobbies:</li>
<ul><%for(String hobbies:resume.getHobbies()){
	%><%=hobbies %>&nbsp&nbsp&nbsp<% 
			}%></ul>
			<li>Email</li>
		<li><h3> <%=resume.getEmail()%> </h3></li>
		<li>Website</li>
			<li><h3> <%=resume.getWebsite()%> </h3></li>
			<li>Date of birth</li>
			<li><h3> <%=resume.getDate()%> </h3></li>
			<li>Contact Number</li>
			<li><h3> <%=resume.getContactNumber()%> </h3></li>















</body>
</p>
</html>
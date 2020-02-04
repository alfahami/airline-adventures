<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/style.css">
<title>World Adventures Airlines</title>
</head>
<body>
	<h1 class="top-heading">Add a passenger</h1>

	<%
		if (request.getAttribute("errors") != null) {
	%>
	<div id="form-errors">
		<fieldset>
			<legend class="centered-text">Errors</legend>
			<ul>
				<%
					if (request.getAttribute("firstname_error") != null) {
				%>

				<li>First name is required</li>
				<%
					}
				%>

				<%
					if (request.getAttribute("lastname_error") != null) {
				%>

				<li>Last name is required</li>
				<%
					}
				%>

				<%
					if (request.getAttribute("date_format_error") != null) {
				%>

				<li>Date Format invalid</li>
				<%
					}
				%>
			</ul>

		</fieldset>

		<%
			}
		%>
	</div>
	<div class="container">

		<form id="passenger-form" method="post" action="AddPassenger">
			<fieldset>
				<legend class="form-title">Passenger details</legend>
				<div class="form-group">
					<label for="fname">First name: </label> <input type="text"
						name="fname" id="fname" value="<%= request.getAttribute("first_name") %>">

				</div>
				<div class="form-group">
					<label for="lname">Last name: </label> <input type="text"
						name="lname" id="lname" value="<%= request.getAttribute("last_name")%>">

				</div>
				<div class="form-group">
					<label for="dob">Date of birth: </label> <input type="date"
						name="dob" id="dob" value="<%= request.getAttribute("dob")%>">

				</div>
				<div class="form-group">
					<label for="gender">Gender: </label> <select name="gender">
						<option value="Male">Male</option>
						<option value="Female">Female</option>
					</select>
				</div>
			</fieldset>
			<input class="btn" type="submit" id="submitButton"
				value="Add new passenger">
		</form>
	</div>
	<hr>
	<footer id="main-footer">
		Coded with &hearts; by <a href="">Fahmi</a> w/ <span
			class="primary-text">nC</span>
	</footer>
</body>
</html>
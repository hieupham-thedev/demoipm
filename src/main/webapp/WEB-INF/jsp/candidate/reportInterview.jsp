<!DOCTYPE HTML>
<html lang="en">

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>Welcome</title>

<meta name="viewport" content="width=device-width, initial-scale=1">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<div class="container p-3 my-3 border rounded w-50"
		style="background-color: #F5F5DC;">
		<p class="h1 text-warning">${interview.candidate.fullName}</p>
		<form:form action="/report-interview" method="post"
			modelAttribute="interview">

			<div class="d-flex">
				<div class="p-2 align-self-center">
					<label for="idInterview">ID:</label>
				</div>
				<div class="p-2 align-self-center">
					<form:input type="text" class="form-control" id="idInterview"
						path="id"></form:input>
				</div>
				<div class="p-2 align-self-center">
					<label for="nameInterviewer">Interviewer:</label>
				</div>
				<div class="p-2 align-self-center">
					<form:input type="text" class="form-control"
						id="nameInterviewer" path="nameInterviewer"></form:input>
				</div>
				<div class="p-2 align-self-center">
					<label for="result">Result:</label>
				</div>
				<div class="p-2 align-self-center">
					<form:select path="result" id="result">
						<form:option value="NONE">--SELECT--</form:option>
						<form:option value="PASS">PASS</form:option>
						<form:option value="FAILURE">FAILURE</form:option>
						<form:option value="CONSIDER">CONSIDER</form:option>
					</form:select>
				</div>
			</div>

			<div class="mb-3 mt-3">
				<label for="comment">Note:</label>
				<form:textarea class="form-control" rows="5" id="comment"
					path="note"></form:textarea>
			</div>

			<div align="right">
				<button type="submit" class="btn btn-primary">Update</button>
			</div>
		</form:form>
	</div>
</body>

</html>
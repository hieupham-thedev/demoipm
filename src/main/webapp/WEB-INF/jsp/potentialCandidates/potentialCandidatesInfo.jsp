<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">

 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">


<title>List Potential Candidates</title>
</head>
<body>

<div class="container mt-4 mb-4 p-3 d-flex justify-content-center">

    <div class="card p-4">
    
	    <div class="header">
		
			<div class="logo"><img src="../img/LogoFPT.jpg" alt="logo fpt" width="40%"></div>
			
			<div><h1 class="Title" style="color: #00DD00">INFO POTENTIAL CANDIDATES</h1></div>
		</div>
    
        <div class=" image d-flex flex-column justify-content-center align-items-center"> 

		        <span class="name mt-3"><i class="fas fa-user-circle"></i> ${candidateDto.fullName}</span> 
		        
		        <span class="name mt-3"><i class="fas fa-envelope-open-text"></i> ${candidateDto.email}</span>
		        
		        <span class="name mt-3"><i class="fas fa-phone-square"></i> ${candidateDto.phone}</span>
		        
		        <span class="name mt-3"><i class="fas fa-chart-line"></i>  1 Year</span>
		        
		        <span class="name mt-3"> <i class="fas fa-edit"></i> Java</span>
		        
		        <span class="name mt-3"><i class="fas fa-wrench"></i> 2</span>    
            
            <div class=" d-flex mt-2"><a href="view-potential-candidates-list"><button class="btn1 btn-dark">Back</button></a></div>
        </div>
    </div>
</div>


</body>
</html>
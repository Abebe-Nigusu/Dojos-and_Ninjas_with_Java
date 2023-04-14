<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" href="/css/main.css"/>
	<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	</head>
	<body>
	 	<h1>New Dojo</h1>
	 	<div class="form-group">
		<form:form action="/dojos/process/new" modelAttribute="dojo" method="post">
	        <div>
	            <form:label path="name" >Name: </form:label>
	            <form:input type="text" path="name" class="form-control"/>
	            <form:errors path="name" class="form-control"/>
	        <div>
	        <input type="submit" value="Create" class="btn btn-primary"/>
	    </form:form>
	    </div>
	</body>
</html>
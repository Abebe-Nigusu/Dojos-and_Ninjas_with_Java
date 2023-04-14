<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
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
<h1>New Ninja</h1>
	<form:form action="/ninjas/process/new" method="post" modelAttribute="ninja">
	 <label>Dojo:</label>
	 <form:select path="dojo">
    	<c:forEach var="dojo" items="${allDojos}">
    		<form:option value="${dojo.id}" path="dojo">
    			<c:out value="${dojo.name}"/>
    		</form:option>
    	</c:forEach>
    </form:select>
    <div class="form-group">
        <label>First Name</label>
        <form:input path="firstName" class="form-control" />
        <form:errors path="firstName" class="text-danger" />
    </div>
    <div class="form-group">
        <label>Last Name</label>
        <form:input path="lastName" class="form-control" />
        <form:errors path="lastName" class="text-danger" />
    </div>
    <div class="form-group">
        <label>Age</label>
        <form:input type="number" path="age" class="form-control" />
        <form:errors path="age" class="text-danger" />
    </div>
    <input type="submit" value="Create" class="btn btn-primary" />
</form:form>
</body>
</html>
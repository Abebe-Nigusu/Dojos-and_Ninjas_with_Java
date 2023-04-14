<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	
	 <h1>Dashboard</h1>
		<a href="/dojos/new"> Create dojo</a>
		<a href="/ninjas/new"> Create Ninja</a>
		<h2>All Ninjas</h2>
		<table class="table table-dark">
	  <thead>
	    <tr>
	      <th scope="col">First Name</th>
	      <th scope="col">Last Name</th>
	      <th scope="col">Age</th>
	     <!--  <th scope="col">Dojo</th> -->
	      
	    </tr>
	  </thead>
	  <tbody>
	    <c:forEach items="${allNinjas}" var="ninja">
	    <tr>
				<td>${ninja.firstName}</td>
				<td>${ninja.lastName}</td>
				<td>${ninja.age}</td>
				<%-- <td> <a href="/dojos/display/${ninja.id}"/>${ninja.dojo.name}</a> </td> --%>
				<%-- <td><a class="btn btn-outline-warning" href="/ninjas/edit/${ninja.id}">Edit</a></td> --%>
	    </tr>
		</c:forEach>
	  </tbody>
	</table>
	
		<h2>All Dojos</h2>
		<table class="table table-dark">
		  <thead>
		    <tr>
		      <th scope="col">Dojo Name</th>
		      <th scope="col">Total Ninjas</th>
		    </tr>
		  </thead>
		  <tbody>
		    <c:forEach items="${allDojos}" var="dojo">
		    <tr>
				<td><a href="/dojos/display/${dojo.id}">${dojo.name}</a></td>
				<td>${dojo.ninjas.size()}</td>
		    </tr>
			</c:forEach>
		  </tbody>
		</table>
	</body>
</html>
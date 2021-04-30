<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="a" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The Informations About Users</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.css">
<script src="${pageContext.request.contextPath}/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.js"></script>

</head>

<body style="padding:100px">
	<a href = "${pageContext.request.contextPath}/user/add"><button type="button" class="btn"><img src="${pageContext.request.contextPath}/bootstrap3/icons/add.png"><fmt:message key = "website.add"></fmt:message></button></a><br/><br />

<table border = "1" class="table table-hover">
	<tr class="active info">	
		<td><fmt:message key = "website.userName"></fmt:message></td>
		<td><fmt:message key = "website.password"></fmt:message></td>
		<td><fmt:message key = "website.sex"></fmt:message></td>
		<td><fmt:message key = "website.age"></fmt:message></td>
		<td><fmt:message key = "website.birthday"></fmt:message></td>
		<td style="width:250px;"><fmt:message key = "website.email"></fmt:message></td>
		<td><fmt:message key = "website.action"></fmt:message></td>
	</tr>
<a:forEach items = "${ users}" var = "u">
	<tr>
		<td>${ u.userName}</td>
		<td>${ u.password}</td>
		<td>${ u.sex}</td>
		<td>${ u.age}</td>
		<td>${ u.birthday}</td>
		<td>${ u.email}</td>
		<td>
			<a href = "${pageContext.request.contextPath}/user/edit/${ u.userId}"><button type="button" class="btn btn-link"><span class="glyphicon glyphicon-danger glyphicon-pencil"></span></button></a>  
			<a href = "${pageContext.request.contextPath}/user/delete/${ u.userId}"><button type="button" class="btn btn-link"><span class="glyphicon glyphicon-trash"></span></button></a></td>
	</tr>
</a:forEach>
</table>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri = "http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update The Informations Of A User</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/error.css">
<script src="${pageContext.request.contextPath}/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/jQuery/jquery.validate.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jQuery/jquery.metadata.js" type="text/javascript"></script>

</head>
<body style="padding:100px">

<form:form action = "${pageContext.request.contextPath}/user/update/${ user.userId}" method = "post" modelAttribute="user" class="form-horizontal" id = "form">
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-user"></span>
	    	<fmt:message key = "website.userName"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="userName" cssClass="form-control required" />
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "userName" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-lock"></span>
	    	<fmt:message key = "website.password"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="password" cssClass="form-control {required:true, minlength:6}" />
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "password" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-globe"></span>
	    	<fmt:message key = "website.sex"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="sex" cssClass="form-control {required:true,equalTo:'#male' or '#female'}"  />
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "sex" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
  	
  	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-time"></span>
	    	<fmt:message key = "website.age"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="age" cssClass="form-control {required:true,min:1,max:150, digits:true, number:true}"/>
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "age" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
  	
  	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-time"></span>
	    	<fmt:message key = "website.birthday"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="birthday" cssClass="form-control {required:true, isDate:true}"/>
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "birthday" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
  	
  	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-envelope"></span>
	    	<fmt:message key = "website.email"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="email" cssClass="form-control required email"/>
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "email" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    </label>
	    <div class="col-sm-4">
	    	<input type = "submit" value = "<fmt:message key = "website.save"></fmt:message>" class = "btn btn-success" />
	    </div>
	    <div class="col-sm-4">
	    </div>
  	</div>
</form:form>
<script>
	$().ready(function(){
		$("#form").validate({
			errorPlacement: function(error, element) {  
			    error.appendTo(element.parent().next());  
			}
		});
	});
	
	$("#userForm").validate({
		rules:{
			userName:"required",
			password:{
				required:true,
 				minlength:6
 			},
 			age:{
 				required:true,
 				min:1,
 				max:150,
 				digits:true,
 				number:true
 			},
			email:{
				required:true,
				email:true
			}
		},
		messages:{
			userName:"<fmt:message key = "jq.userName"></fmt:message>",
			password:{
				required:"<fmt:message key = "jq.password"></fmt:message>",
 				minlength:"<fmt:message key = "jq.passwordLength"></fmt:message>"
 			},
 			age:{
 				required:"<fmt:message key = "jq.age"></fmt:message>",
 				min:"<fmt:message key = "jq.ageMin"></fmt:message>",
 				max:"<fmt:message key = "jq.ageMax"></fmt:message>",
 				digits:"<fmt:message key = "jq.ageDigits"></fmt:message>",
 				number:"shuzi"
 			},
			email:{       
				required:"<fmt:message key = "jq.email"></fmt:message>",
				email:"<fmt:message key = "jq.emailFormat"></fmt:message>"
			}
		}
	}) 
</script>
</body>
</html>
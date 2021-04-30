<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="core" %>
<%@taglib uri = "http://www.springframework.org/tags/form"  prefix="form"%>
<%@taglib uri = "http://www.springframework.org/tags"  prefix="tags"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add The Informations Of A User</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap3/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/error.css">
<link href="${pageContext.request.contextPath}/CSS/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<script src="${pageContext.request.contextPath}/bootstrap3/js/jquery-1.11.2.min.js"></script>
<script src="${pageContext.request.contextPath}/bootstrap3/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/jQuery/jquery.validate.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/jQuery/jquery.metadata.js" type="text/javascript"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.8.3.min.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>


</head>
<body style="padding:100px">
<form:form action = "${pageContext.request.contextPath}/user/addCheck" method="post" class="form-horizontal"  modelAttribute="user" id = "userForm">
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-user"></span>
	    	<fmt:message key = "website.userName"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="userName" cssClass="form-control" placeholder="UserName"/>
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "userName" class="alert alert-danger glyphicon glyphicon-exclamation-sign "></form:errors>
	    </div>
  	</div>
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-lock"></span>
	    	<fmt:message key = "website.password"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="password" cssClass="form-control" placeholder="Password"/>
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
	    <div class="col-sm-2">
	    	<form:radiobutton path="sex" value="male" checked="checked"/><fmt:message key = "website.male"></fmt:message>
	    </div>
	    <div class="col-sm-2">
    		<form:radiobutton path="sex" value="female"/><fmt:message key = "website.female"></fmt:message>
	    </div>
	    <div class="col-sm-4">
	    	<form:errors path = "sex" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors><br />
	    </div>
  	</div>
  	
  	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    	<span class="glyphicon glyphicon-time"></span>
	    	<fmt:message key = "website.age"></fmt:message>
	    </label>
	    <div class="col-sm-4">
	    	<form:input path="age" cssClass="form-control" placeholder="Age"/>
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
	    
	    <div class="container">
    		<form action="" class="form-horizontal"  role="form">
        		<fieldset>
        			<div class="input-group date form_date  col-md-4" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
		                <input class="form-control" size="16" type="text" value="" readonly>
		                <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
        			</div>
				<input type="hidden" id="dtp_input2" value="" /><br/>
  
	    	<%-- <form:input path="birthday" cssClass="form-control {required:true, isDate:true}" placeholder="Birthday"/> --%>
	    		</fieldset>
    		</form>
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
	    	<form:input path="email" cssClass="form-control" placeholder="Email"/>
	    </div>
	    <div class="col-sm-4">
			<form:errors path = "email" class="alert alert-danger glyphicon glyphicon-exclamation-sign"></form:errors>
	    </div>
  	</div>
	
	<div class="form-group">
	    <label class="col-sm-4 control-label">
	    </label>
	    <div class="col-sm-4">
	    	<input type = "submit" value = "<fmt:message key = "website.save"></fmt:message>" class = "btn btn-success"/>
	    </div>
	    <div class="col-sm-4">
	    </div>
  	</div>
</form:form>

<script>
$().ready(function(){
	$("#userForm").validate({
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
 			birthday:{
 				required:true
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
 			birthday:{
 				required:"<fmt:message key = "jq.birthday"></fmt:message>"
 			},
			email:{       
				required:"<fmt:message key = "jq.email"></fmt:message>",
				email:"<fmt:message key = "jq.emailFormat"></fmt:message>"
			}
		}
	}) 
</script>

<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        //language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		forceParse: 0,
        showMeridian: 1
    });
	$('.form_date').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	$('.form_time').datetimepicker({
        language:  'fr',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 1,
		minView: 0,
		maxView: 1,
		forceParse: 0
    });
</script>

</body>
</html>
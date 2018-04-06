<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<jsp:include page="/WEB-INF/view/template/menu.jsp"/>


<script type="text/javascript">
	$().ready(function(){
		
		$("#joinBtn").click(function(){
			if ($("#email").val() == ""){
				alert("이메익 입력해");
				$("#email").focus();
				$("#email").addClass("invalid");
				return false;
			}
			
			
		  $("#joinForm").attr({
              "method" : "post",
              "action" : "<c:url value="/join"/>"
           }).submit();
		  
		  
		});
	});
</script>
<body>
		<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px; margin-top: 80px;">
				<form:form modelAttribute="joinForm">
					<h3 style="text-align: center;">회원가입</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userId" maxlength="20"
								/>
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"
								>
					</div>
				
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20">
					</div>
					<div class="form-group" style="text-align: center;">
				
					</div>
					<div class="form-group">
						<input type="email"id="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20">
					</div>
					<input id="joinBtn"  style="background-color:#272727; color:#c0c0c0;" type="button" class="btn form-control" value="회원가입">
					
				</form:form> 
		</div>
		<div class="col-lg-4"></div>
	</div>
	</div>
</body>
</html>
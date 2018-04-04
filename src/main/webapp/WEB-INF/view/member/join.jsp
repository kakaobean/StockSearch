<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
<script type="text/javascript">
	$().ready(function(){
		  $("#joinForm").attr({
              "method" : "post",
              "action" : "<c:url value="/join"/>"
           }).submit();
	});
</script>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-4">
			<div class="jumbotron" style="padding-top: 20px; margin-top: 80px;">
				<form:form modelAttribute="joinForm">
					<h3 style="text-align: center;">회원가입화면</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="아이디" name="userID" maxlength="20"
								value="${memberVO.userId}" />
					</div>
					
					<div class="form-group">
						<input type="password" class="form-control" placeholder="비밀번호" name="userPassword" maxlength="20"
								value="${memberVO.userPassword }">
					</div>
				
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름" name="userName" maxlength="20"
								value="${memberVO.userName }">
					</div>
					<div class="form-group" style="text-align: center;">
				
					</div>
					<div class="form-group">
						<input type="email" class="form-control" placeholder="이메일" name="userEmail" maxlength="20"
								value="${memberVO.userEmail }">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="회원가입">
				</form:form>
		</div>
		<div class="col-lg-4"></div>
	</div>
	</div>
</body>
</html>
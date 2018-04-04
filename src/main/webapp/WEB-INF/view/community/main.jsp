<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

</head>
<body>
	

	<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
	<div class="container" style="width: 900px; height: 300px;">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="1"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="<c:url value="/static/img/4.PNG"/>" style="width: 900px; height: 300px;"/>
				</div>
				<div class="item">
					<img src="<c:url value="/WEB-INF/static/img/4.PNG"/>" style="width: 900px; height: 300px;"/>
				</div>
				<div class="item">
					<img src="<c:url value="/WEB-INF/static/img/4.PNG"/>" style="width: 900px; height: 300px;"/>
				</div>

			</div> 
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a> <a class="right carousel-control" href="#myCarousel" 
				data-slide="next"> <span
				class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>

	</div>
</body>
</html>
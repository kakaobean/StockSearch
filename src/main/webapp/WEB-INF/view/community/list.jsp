<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
	<div class="cantanier" style="width:1290px;"> 
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
						<tr>
							<th style="background-color: #eeeeee; text-align: center;">ID</th>
							<th style="background-color: #eeeeee; text-align: center;">제목</th>
							<th style="background-color: #eeeeee; text-align: center;">내용</th>
	
						</tr>
				</thead>
				<tbody>
				
				<c:forEach items="${communityList}" var="community">
					<tr>
						<td>${community.id}</td>
						<td>${community.title}</td>
						<td>${community.body}</td>
					</tr>
				</c:forEach>
				</tbody>
				
			</table>
		</div>
		<a href="<c:url value="/write"/>" type="button" class="btn pull-right" style="background-color:#272727; color:#c0c0c0;">글쓰기</a>
	</div>

</body>
</html>



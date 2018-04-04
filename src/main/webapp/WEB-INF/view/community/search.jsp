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
	<jsp:include page="/WEB-INF/view/template/menu.jsp" />
 
	<div style="width:110px; display:inline-bolck;">
		<div>
			pbr <input type="text" class="form-control" style="width:100px;"placeholder="값 입력">
		</div>
		<div>
			부채율 <input type="text" class="form-control" style="width:100px;"placeholder="값 입력">
		</div>
		<div>
			유보율 <input type="text" class="form-control" style="width:100px;"placeholder="값 입력">
		</div>	
		<div>
			등락율 <input type="text" class="form-control" style="width:100px;"placeholder="값 입력">
		</div>			
	</div><!-- 
	 --><div style="width:100px; display:inline-bolck;">
		<div>
		아아
		</div>
	</div>
</body>
</html>
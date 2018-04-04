


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- 
<script src="<c:url value="/static/js/jquery-3.3.1.min.js"/>"
	type="text/javascript"></script>
	 
 -->
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
	 
<script type="text/javascript">
	$().ready(function(){
		$("#writeBtn").click(function() {

				var writeForm = $("#writeForm");
				writeForm.attr({
					"method" : "post",
					"action" : "<c:url value="/write"/>"

				});

				writeForm.submit();
			});
	});
</script>	
</head>
<body>

	<jsp:include page="/WEB-INF/view/template/menu.jsp"/>
	<div class="cantanier" style="width:1290px;">
		<div class="row">
			<table class="table table-striped"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="2" style="background-color: #eeeeee; text-align: center; ">게시글 작성</th>
						
					</tr>
				</thead>
				<tbody>
				<form:form modelAttribute="writeForm" enctype="multipart/form-data">
					<tr>
						<td><input type="text" id="title" class="form-control" placeholder= "제목" name="title" maxlength="50" value="${communityVO.title}"/></td>
					</tr>
					<tr>
						<td><textarea id="body" class="form-control" placeholder= "글 작성" name="body" maxlength="2048" style="height: 350px;" >
							${communityVO.body}
						</textarea></td>
					</tr>
				</form:form>
				</tbody>
			</table>
				 <input type="button" class="btn pull-right" id="writeBtn" value="글쓰기" style="background-color:#272727; color:#c0c0c0;"/>
		</div>
	</div>
</body>
</html> 
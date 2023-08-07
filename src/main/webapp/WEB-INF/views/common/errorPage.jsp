<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"/>
		<title>에러 페이지</title>
	</head>
	<body>
		<h1>에러내용</h1>
		<div>${msg }</div>
		<a href="${url }">이전 페이지 이동</a>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"/>
		<title>공지사항 목록 조회</title>
		<link rel="stylesheet" href="/resources/css/noticeStyle.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<table>
			<colgroup>
				<col width="10%">
				<col width="35%">
				<col width="10%">
				<col width="25%">
				<col width="10%">
			</colgroup>
			<thead>
				<tr>
					<th>글번호</th>
					<th>글제목</th>
					<th>글쓴이</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="notice" items="${requestScope.nList}">
					<tr>
						<td>${notice.noticeNo }</td>
						<td><a href="/notice/detail.do?noticeNo=${notice.noticeNo }">${notice.noticeSubject }</a></td>
						<td>${notice.noticeWriter }</td>
						<td>${notice.noticeDate }</td>
						<td>${notice.viewCount }</td>
					</tr>
				</c:forEach>
	            <tr>
	            	<td colspan="5" align="center">
	           		${pageNavi }
            	</td>
            </tr>
			</tbody>
		</table>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>
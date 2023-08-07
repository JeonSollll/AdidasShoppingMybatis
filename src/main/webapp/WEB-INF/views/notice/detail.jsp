<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 상세조회</title>
		<link rel="stylesheet" href="/resources/css/detailStyle.css">
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<div id="detail">
			<h1>공지사항 작성</h1><br>
			<ul>
				<li>
					<label for="">글번호</label>
					<span>${requestScope.notice.noticeNo }</span>
				</li>
				<li>
					<label for="">작성일</label>
					<span>${requestScope.notice.noticeDate }</span>
				</li>
				<li>
					<label for="">글쓴이</label>
					<span>${notice.noticeWriter }</span>
				</li>
				<li>
					<label for="">제목</label>
					<span>${notice.noticeSubject }</span>
				</li>
				<li>
					<label for="">내용</label>
					<p>${notice.noticeContent }</p>
				</li>
			</ul>
		    <br><br>
		    <a href="/notice/list.do">목록으로 이동</a>
		    <a href="/notice/modify.do?noticeNo=${notice.noticeNo }">수정하기</a>
		    <a href="javascript:void(0)" onclick="deleteCheck();">삭제하기</a>
		</div>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	    <script>
	        const deleteCheck = () => {
	            const noticeNo = '${notice.noticeNo}';
	            if(confirm("정말 삭제하시겠습니까?")){
	                location.href = "/notice/delete.do?noticeNo="+noticeNo;
	            }
	        }
	    </script>
	</body>
</html>
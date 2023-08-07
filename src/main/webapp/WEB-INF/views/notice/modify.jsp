<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
		<title>공지사항 수정</title>
		<style>
	        body {
	            font-family: Arial, sans-serif;
	            max-width: 1500px;
	            margin: 0 auto;
	            padding: 20px;
	        }
	        h1 {
	            text-align: center;
	        }
	        form {
	            margin-top: 20px;
	            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	            border-radius: 5px;
	            padding: 20px;
	            background-color: #fff;
	        }
	        fieldset {
	            border: none;
	            padding: 0;
	            margin-bottom: 20px;
	        }
	        label {
	            display: block;
	            margin-bottom: 5px;
	        }
	        input[type="text"],
	        textarea {
	            width: 95%;
	            padding: 10px;
	            border: 1px solid #ccc;
	            border-radius: 5px;
	            margin-bottom: 10px;
	        }
	        input[type="submit"],
	        input[type="reset"] {
	            background-color: #00000068;
	            color: #fff;
	            padding: 10px 20px;
	            border: none;
	            border-radius: 5px;
	            cursor: pointer;
	            margin-right: 10px;
	        }
	        input[type="submit"]:hover,
	        input[type="reset"]:hover {
	            background-color: #000000bb;
	        }
	        .button-container {
	            text-align: center;
	            margin-top: 20px;
	        }
	        ul {
	            list-style: none;
	            padding: 0;
	        }
	        legend {
	            font-size: 1.5em;
	            font-weight: bold;
	            margin-bottom: 10px;
	        }
    	</style>
	</head>
	<body>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
		<h1>공지사항 수정</h1>
		<form action="/notice/modify.do" method="post">
			<input type = "hidden" name="noticeNo" value="${notice.noticeNo }">
			<fieldset>
				<legend>공지사항 수정</legend>
				<ul>
					<li>
						<label for="">제목</label>
						<input type="text" id="" name="noticeSubject" value="${notice.noticeSubject }">
					</li>
					<li>
						<label for="">내용</label>
						<textarea name="noticeContent" id="" cols="30" rows="10">${notice.noticeContent }</textarea>
					</li>
				</ul>
			</fieldset>
			<div>
				<input type="submit" value="수정">
				<input type="reset" value="초기화">
			</div>
		</form>
		<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
	</body>
</html>
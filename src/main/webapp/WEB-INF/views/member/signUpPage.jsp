<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>회원가입</title>
        <link rel="stylesheet" href="/resources/css/signUpStyle.css">
	</head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <section id="signup">
                <form id="registration-form" action="/member/register.do" method="POST">
                    <h1>회원가입</h1>
                    <label for="name">이름</label>
                    <input type="text" id="name" name="name" required>
                
                    <label for="username">아이디</label>
                    <input type="text" id="username" name="username" required>
                
                    <label for="password">비밀번호</label>
                    <input type="password" id="password" name="password" required>
                
                    <label for="confirm-password">비밀번호 확인</label>
                    <input type="password" id="confirm-password" name="confirm-password" required>
                
                    <label for="email">이메일</label>
                    <input type="email" id="email" name="email" required>
                
                    <label for="phone">휴대폰 번호</label>
                    <input type="tel" id="phone" name="phone" required>
                
                    <label for="birthdate">생년월일</label>
                    <input type="date" id="birthdate" name="birthdate" required>
                
                    <label>성별</label>
                    <div class="radio-group">
                   		<input type="radio" id="gender-male" name="gender" value="M" required>
	                    <label for="gender-male">남성</label>
	                    <input type="radio" id="gender-female" name="gender" value="F">
	                    <label for="gender-female">여성</label>
                    </div>
                
                    <label for="address">주소</label>
                    <input type="text" id="address" name="address" required>
                
                    <button type="submit">가입하기</button>
                    <button type="reset">초기화</button>
                </form>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        
        <script>
	        // JavaScript to set the default value for the birthdate input
	        const birthdateInput = document.getElementById("birthdate");
	        const currentDate = new Date();
	        const twentyYearsAgo = new Date(
	            currentDate.getFullYear() - 20,
	            currentDate.getMonth(),
	            currentDate.getDate()
	        );
	
	        // Format the date as "YYYY-MM-DD" to set as the default value
	        const formattedDate = twentyYearsAgo.toISOString().split("T")[0];
	
	        birthdateInput.value = formattedDate;
    	</script>
    </body>
</html>
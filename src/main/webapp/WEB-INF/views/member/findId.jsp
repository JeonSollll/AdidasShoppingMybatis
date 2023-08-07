<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>아이디찾기</title>
        <link rel="stylesheet" href="/resources/css/loginStyle.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <section id="login">
                <h2>아이디 찾기</h2>
                    <form action="/member/findId.do" method="post">
                        <label for="username">사용자 이름</label>
                        <input type="text" id="username" name="username" required>
                        <label for="phone">휴대폰 번호</label>
                        <input type="tel" id="phone" name="phone" required>
                        <a href="./findPw.html">비밀번호를 잊으셨나요?</a>
                        <a href="./signUpPage.html">회원가입</a>
                        <button type="submit" id="loginbtn">제출</button><br>
                        <button type="button" id="snsbtn">sns 연동</button>
                    </form>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>
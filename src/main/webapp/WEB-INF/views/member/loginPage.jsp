<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp"/>
        <title>로그인</title>
        <link rel="stylesheet" href="../resources/css/loginStyle.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <section id="login">
                <h2>로그인</h2>
                    <form action="/member/login.do" method="post">
                        <label for="user-id">아이디</label>
                        <input type="text" id="username" name="username" required>
                        <label for="password">비밀번호:</label>
                        <input type="password" id="password" name="password" required>
                        <a href="./findId.html">아이디/비밀번호 찾기</a>
                        <a href="./signUpPage.html">회원가입</a>
                        <button type="submit" id="loginbtn">로그인</button><br>
                        <button type="button" id="snsbtn">sns 연동</button>
                    </form>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>
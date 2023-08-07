<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>비밀번호 찾기</title>
        <link rel="stylesheet" href="../resources/css/loginStyle.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <section id="login">
                <h2>비밀번호 찾기</h2>
                    <form>
                        <label for="user-id">아이디</label>
                        <input type="text" id="user-id" name="user-id" required>
                        <label for="username">사용자 이름</label>
                        <input type="text" id="username" name="username" required>
                        <label for="phone">휴대폰 번호</label>
                        <input type="tel" id="phone" name="phone" required>
                        <a href="./signUpPage.html">회원가입</a>
                        <button type="submit" id="loginbtn" onclick="checkPw();">제출</button><br>
                        <button type="button" id="snsbtn">sns 연동</button>
                    </form>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        <script>
            function checkPw(){
                window.location.href = "paymentPage.html";
            }
        </script>
    </body>
</html>
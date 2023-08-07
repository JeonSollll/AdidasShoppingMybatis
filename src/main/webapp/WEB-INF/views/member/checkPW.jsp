<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>비밀번호 확인</title>
        <link rel="stylesheet" href="../resources/css/checkPw.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <section id="check-Pw">
                <h2>새 비밀번호 등록</h2>
                    <form>
                        <label for="password">비밀번호:</label>
                        <input type="password" id="password" name="password" required>
                        <label for="password">비밀번호 확인:</label>
                        <input type="password" id="password" name="password" required>
                        <button type="submit" id="loginbtn">제출</button><br>
                    </form>
            </section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
    </body>
</html>
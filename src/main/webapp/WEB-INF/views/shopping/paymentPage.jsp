<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
		<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <title>결제페이지</title>
        <link rel="stylesheet" href="../resources/css/paymentPageStyle.css">
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
            <h2>주문 페이지</h2>
            <form id="order-form">
                <div>
                    <label for="recipient">받는 사람:</label>
                    <input type="text" id="recipient" name="recipient" required>
                </div>
                <div>
                    <label for="phone">휴대폰 번호:</label>
                    <input type="tel" id="phone" name="phone" required>
                </div>
                <div>
                    <label for="address">주소:</label>
                    <input type="text" id="address" name="address" required>
                </div>
                <div>
                    <label for="request">배송 요청 사항:</label>
                    <textarea id="request" name="request"></textarea>
                </div>
                <div class="button-group">
                    <button type="submit" id="submit">주문하기</button>
                    <button type="reset" id="reset">초기화</button>
                    <button type="button" id="cancel" onclick="goBack();">취소</button>
                </div>
            </form>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        <script>
            function goBack() {
                window.history.back();
            }
        </script>
    </body>
</html>
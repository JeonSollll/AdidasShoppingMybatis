<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <jsp:include page="/WEB-INF/views/include/head.jsp"/>
        <title>마이페이지</title>
        <link rel="stylesheet" href="/resources/css/signUpStyle.css">
    </head>
    <body>
       <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
        <main>
	   		<section id="signup">
				<form id="registration-form" action="/member/update.do" method="post">
   					<h1>회원 상세 조회</h1>
					<label for="member-id">아이디</label>
					<input type="text" id="member-id" name="member-id" value="${member.memberId }"> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-pw">비밀번호</label>
					<input type="password" id="member-pw" name="member-pw" value="${member.memberPw }"> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-name">이름</label>
					<input type="text" id="member-name" name="member-name" value="${member.memberName }" readonly> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-age">생년월일</label>
					<input type="text" id="member-age" name="member-age" value="${member.memberBirthDate }" readonly> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-email">이메일</label>
					<input type="text" id="member-email" name="member-email" value ="${member.memberEmail }"> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-phone">전화번호</label>
					<input type="text" id="member-phone" name="member-phone" value ="${member.memberPhone }"> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->

					<label for="member-address">주소</label>
					<input type="text" id="member-address" name="member-address" value ="${member.memberAddress }"> <!-- 기능을 위한 id, 쿼리 스트링 싱성을 위한 name -->
					
					<button type="submit">수정하기</button><br><br>
					<a href="javascript:void(0)" onclick="checkDelete();">탈퇴하기</a>
				</form>
			</section>
        </main>
        <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        <script>
		function checkDelete(){
			const memberId = '${sessionScope.memberId}';
			if (confirm("탈퇴하시겠습니까?")) {
				// 사용자가 "확인"을 클릭하면, 지정된 URL로 리디렉션합니다.
				window.location.href = "/member/delete.do?memberId="+memberId;
			}
		}
            // "상품 후기 작성" 버튼 클릭 시 작은 윈도우 창 띄우기
            const writeReviewButtons = document.querySelectorAll('.write-review');
            writeReviewButtons.forEach((button) => {
                button.addEventListener('click', () => {
                    window.open('productReview.html', 'Review', 'width=600,height=700');
                    // 추가적인 후기 작성 동작 수행
                });
            });
           // 장바구니에서 제품 제거
            const removeButtons = document.querySelectorAll('.remove-from-cart');
            removeButtons.forEach((button) => {
                button.addEventListener('click', (event) => {
                    const cartItem = event.target.closest('.cart-item');
                    cartItem.remove();
                    
                    // 장바구니가 비어있을 때 전체 결제하기 버튼 숨김 처리
                    const cartItems = document.querySelectorAll('.cart-item');
                    const checkoutButton = document.querySelector('#paymentAll');
                    if (cartItems.length === 0) {
                        checkoutButton.style.display = 'none';
                        document.getElementById("cart").style.display='none';
                    }
                });
            });
        </script>
    </body>
</html>
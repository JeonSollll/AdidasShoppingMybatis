<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
		<jsp:include page="/WEB-INF/views/include/head.jsp"></jsp:include>
        <title>메인페이지</title>
        <link rel="stylesheet" href="/resources/css/mainStyle.css">
    </head>
    <body>
        <div id="container">
            <jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
            <main>
                <section id="main-image">
                    <img src="/resources/images/mainImg1.jpg">
                </section>
                
                <section id="products">
                    <h2>제품 목록</h2>
                    <div class="product">
                        <img src="/resources/images/슬리퍼.jpg">
                        <h3>슬리퍼</h3>
                        <p>멋진 슬리퍼</p>
                        <button class="add-to-cart">장바구니에 추가</button>
                    </div>
                    <div class="product">
                        <img src="/resources/images/시티 마라톤.jpg">
                        <h3>시티 마라톤</h3>
                        <p>멋진 신발</p>
                        <button class="add-to-cart">장바구니에 추가</button>
                    </div>
                    <div class="product">
                        <img src="/resources/images/솔리드 크루삭.jpg">
                        <h3>솔리드 크루삭</h3>
                        <p>멋진 양말</p>
                        <button class="add-to-cart">장바구니에 추가</button>
                    </div>
                    <div class="product">
                        <img src="/resources/images/BB TRACKTOP.jpg">
                        <h3>BB 트랙탑</h3>
                        <p>멋진 옷</p>
                        <button class="add-to-cart">장바구니에 추가</button>
                    </div>
                    <!-- 다른 제품들도 추가할 수 있습니다 -->
                    </section>
                
                    <section id="product-details">
                        <h2>제품 상세 정보</h2>
                        <div id="details">
                            <img src="">
                            <h3></h3>
                            <p></p>
                            <button class="add-to-cart">장바구니에 추가</button>
                        </div>
                    </section>
                
                    <section id="cart">
                    <h2>장바구니</h2>
                    <ul id="cart-items">
                        <!-- 장바구니 아이템들이 여기에 추가됩니다 -->
                    </ul>
                    <button id="checkout">결제하기</button>
                </section>
            </main>
            <jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
        </div>

    <script>
        // 제품 상세 정보 보기
        const products = document.querySelectorAll('.product');
        const productDetails = document.getElementById('product-details');
        const detailsImage = productDetails.querySelector('img');
        const detailsTitle = productDetails.querySelector('h3');
        const detailsDescription = productDetails.querySelector('p');

        products.forEach((product) => {
        product.addEventListener('click', () => {
            const image = product.querySelector('img');
            const title = product.querySelector('h3');
            const description = product.querySelector('p');

            detailsImage.src = image.src;
            detailsTitle.textContent = title.textContent;
            detailsDescription.textContent = description.textContent;

            productDetails.style.display = 'block';
            products.style.display = 'none';
        });
        });

        // 장바구니에 제품 추가
        const addToCartButtons = document.querySelectorAll('.add-to-cart');
        const cartItems = document.getElementById('cart-items');

        addToCartButtons.forEach((button) => {
        button.addEventListener('click', () => {
            const product = button.parentNode;
            const image = product.querySelector('img');
            const title = product.querySelector('h3');

            const cartItem = document.createElement('li');
            cartItem.innerHTML = `
            <img src="${image.src}">
            <span>${title.textContent}</span>
            <button class="remove-from-cart">X</button>
            `;

            cartItems.appendChild(cartItem);
        });
        });

        // 장바구니에서 제품 제거
        cartItems.addEventListener('click', (event) => {
        if (event.target.classList.contains('remove-from-cart')) {
            const item = event.target.parentNode;
            item.remove();
        }
        });

        // 결제하기
        const checkoutButton = document.getElementById('checkout');
        checkoutButton.addEventListener('click', () => {
        const cartItems = document.querySelectorAll('#cart-items li');

        if (cartItems.length === 0) {
            alert('장바구니가 비어 있습니다.');
        } else {
            alert("주문결제 페이지로 이동합니다!");
            window.location.href = "paymentPage.html";
            cartItems.forEach((item) => {
            item.remove();
            });
        }
        });
    </script>
    </body>
</html>
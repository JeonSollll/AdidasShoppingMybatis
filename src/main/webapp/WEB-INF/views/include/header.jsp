<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header>
    <div>
        <a href="/index.jsp">
            <img src="/resources/images/logo.png" alt="로고" id="logo">
        </a>
    </div>
    <nav>
        <ul>
            <li><a href="/index.jsp">홈</a></li>
            <li><a href="/shop/productPage.do">제품</a></li>
            <c:if test="${sessionScope.memberId ne null}">
                <li><a href="/shop/myPage.do?memberId=${memberId }">마이페이지</a></li>
                <li><a href="/member/logout.do">로그아웃</a></li>
            </c:if>
            <c:if test="${memberId eq null}">
                <li><a href="/member/login.do">로그인</a></li>
                <li><a href="/member/register.do">회원가입</a></li>
            </c:if>
            <li><a href="/notice/list.do">공지사항</a></li>
        </ul>
    </nav>
</header>
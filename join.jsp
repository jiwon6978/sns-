<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>

    <!-- 컨텍스트 경로를 고려한 정적리소스 경로 -->
    <link rel="stylesheet" href="<c:url value='/css/join.css'/>">
</head>
<body>
<div class="container">
    <div class="logo">Blah Blah</div>
    <div class="desc">.</div>
    <button type="button" class="btn-google">Google로 로그인</button>

    <div class="divider"><span>또는</span></div>

    <!-- action은 예시로 /join 으로 설정.-->
    <form method="post" action="<c:url value='/join'/>">
        <input type="text" name="phone" placeholder="휴대폰 번호" required>
        <input type="password" name="password" placeholder="비밀번호" required>
        <input type="text" name="username" placeholder="성명" required>
        <input type="text" name="userid" placeholder="계정이름" required>

        <div class="policy">
            저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 BlahBlah에 업로드했을 수도 있습니다.
            더 <a href="<c:url value='/policy'/>">알아보기</a>
        </div>

        <button type="submit" class="submit-btn">가입</button>
    </form>

    <div class="divider"></div>

    <!-- 로그인 페이지로 이동하는 링크(예시: /login) -->
    <a class="login-btn2" href="<c:url value='/login'/>">이미 계정이 있으신가요?</a>
</div>
</body>
</html>

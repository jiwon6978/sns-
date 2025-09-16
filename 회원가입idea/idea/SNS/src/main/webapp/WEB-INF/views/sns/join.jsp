<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원가입</title>
    <style>
         a{
                    text-decoration: none;
                    /* color:rgb(161,161,161); */
                }
                body {
                    /* background-color: #000; */
                    display: flex;
                    justify-content: center;
                    align-items: center;
                    height: 100vh;
                    margin: 0;
                    font-family: 'Arial', sans-serif;
                    /* color:rgb(253,250,245) */
                }

                .container {
                    /* background-color: rgb(252, 249, 244); */
                    /* border: 1px solid #333; */
                    padding: 40px 30px;
                    width: 360px;
                    text-align: center;
                    color: #fff;
                }

                .logo {
                    /* font-family: 'Brush Script MT', cursive; */
                    color: rgb(171,23,179);
                    font-weight: 700;
                    font-size: 50px;
                    margin-bottom: 10px;
                }

                .desc {
                    font-size: 14px;
                    color: #ccc;
                    margin-bottom: 20px;
                }

                .btn-google {
                    background-color: rgb(252,249,244);
                    color:rgb(161,161,161);
                    border: none;
                    width: 100%;
                    padding: 10px;
                    margin-bottom: 15px;
                    font-weight: bold;
                    border-radius: 10px;
                    cursor: pointer;
                }
                .btn-google>a {
                     color:rgb(161,161,161);
                }

                .divider {
                    display: flex;
                    align-items: center;
                    margin: 15px 0;
                }

                .divider::before,
                .divider::after {
                    content: "";
                    flex: 1;
                    height: 1px;
                    background: #444;
                }

                .divider span {
                    margin: 0 10px;
                    color: #888;
                    font-size: 13px;
                }

                input {
                    width: 100%;
                    padding: 10px;
                    margin-bottom: 10px;
                    background-color: rgb(252, 249, 244);
                    border: 1px solid #888;
                    /* color: #fff; */
                    border-radius: 10px;
                }

                .policy {
                    font-size: 12px;
                    color: #888;
                    margin: 15px 0;
                }

                .policy a {
                    color: #3f99ed;
                    text-decoration: none;
                }

                .submit-btn {
                    background-color: rgb(252,249,244);
                    color: #fff;
                    border-radius: 10px;
                    border: none;
                    width: 100%;
                    padding: 10px;
                    font-weight: bold;
                    cursor: pointer;
                    margin-top: 10px;
                    margin-bottom: 10px;
                }
                .submit-btn>a{
                    color:rgb(161,161,161);
                }

                .login-btn2 {
                    color:#444;
                    width:100%;
                    padding:15px;
                    margin-top:30px;
                    border:none;
                    background-color: rgb(252,249,244);
                    border-radius: 10px;
                    color:white;
                    font-weight:bolder;
                    cursor: pointer;
                }
                .login-btn2>a {
                    color:rgb(161,161,161);
                }
    </style>

</head>

<body>
    <div class="container">
        <div class="logo">Blah Blah</div>
        <div class="desc">.</div>
        <button class="btn-google">Google로 로그인</button>
        <div class="divider"><span>또는</span></div>
        <form action="/sns/join" method="post">
            <input name ="phonenumber" type="text" placeholder="휴대폰 번호" required>
            <input name="password" minlength="8" type="password" placeholder="비밀번호" required>
            <input name="username" type="text" placeholder="사용자 이름" required>
            <input name="email" type="text" placeholder="[선택] Email (계정 분실 시 본인확인용)">
            <div class="policy">
                저희 서비스를 이용하는 사람이 회원님의 연락처 정보를 BlahBlah에 업로드했을 수도 있습니다. 더 <a href="#">알아보기</a>
            </div>
            <button type="submit" class="submit-btn">가입</button>
        </form>
        <div class="divider"></div>
        <button class="login-btn2" >이미 계정이 있으신가요?</button>

</body>
</html>

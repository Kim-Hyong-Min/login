<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        *{
            margin: 0;
            padding: 0;
        }
        body{
        	margin: 0 auto;
            width: 1500px;
            height: 1500px;
            background-color: rgb(211, 208, 203);
            display: grid;
            justify-content: center;
            grid-template-columns: auto;
            grid-template-rows: 20% 60% 20%;
            grid-template-areas: 
            "header"
            "form"
            "footer"
            ;
        }
        header{
            margin-top: 50px;
            grid-area: header;
            justify-content: center;
        }
        form{
            margin-top: 50px;
            margin-left: 60px;
            grid-area: form;
            display: grid;
            gap: 20px;
            justify-content: center;
            width: 400px;
            height: 1200px;
        }
        footer{
            grid-area: footer;
            display: grid;
            gap: 20px;
            justify-content: center;
        }

        img{
            width: 250px;
            height: 50px;
        }
        a{
            display: flex;
            justify-content: center;
        }
        #input1{
            width: 400px;
            height: 40px;
        }
        #input2{
            width: 125px;
            height: 40px;
        }
        #input3{
            width: 270px;
            height: 40px;
        }
        #input4{
            width: 120px;
            height: 40px;
            color: white;
            background-color: rgb(62, 224, 56);
        }
        #input5{
            width: 400px;
            height: 40px;
            color: white;
            background-color: rgb(62, 224, 56);
        }
        .agree{
            display: flex;
            justify-content: center;
        }
        p{
            color: red;
            visibility: hidden;
        }
        h4{
        	text-align: center;
        }
    </style>
    <script type="text/javascript" src="_02_validation.js"></script>
    <title>join</title>
</head>

<body>
<div>
    <header>
        <a id="a" href="https://www.naver.com/"><img src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
    </header>
    <form method="post" id="form" action="_04_joinPro.jsp" >
        <section class="id">
            <h2>아이디</h2>
            <input type="text" name="id" id="input1">
            <p id="alert1">필수 정보입니다.</p>
        </section>

        <section class="pw1">
            <h2>비밀번호</h2>
            <input type="password" name="pw" id="input1">
            <p id="alert2">필수 정보입니다.</p>
        </section>

        <section class="pw2">
            <h2>비밀번호 재확인</h2>
            <input type="password" name="pwCheck" id="input1">
            <p id="alert3">필수 정보입니다.</p>
        </section>

        <section class="name">
            <h2>이름</h2>
            <input type="text" name="name" id="input1">
            <p id="alert4">필수 정보입니다.</p>
        </section>

        <section class="day">
            <input type="number" name="year" placeholder="년(4자)" id="input2">
            <select name="month" id="input2">
                <option>월</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <input type="number" name="day" placeholder="일" id="input2">
            <p id="alert5">태어난 년도 4자리를 정확하게 입력하세요.</p>
        </section>

        <section class="gender">
            <h2>성별</h2>
            <select id="input1" name="gender">
                <option>성별</option>
                <option>남자</option>
                <option>여자</option>
                <option>선택 안함</option>
            </select>
            <p id="alert6">필수 정보입니다.</p>
        </section>

        <section class="email">
            <h2>본인 확인 이메일<h3>(선택)</h3></h2>
            <input type="email" id="input1" name="email">
        </section>

        <section class="phone">
            <h2>휴대전화</h2>
            <select id="input1">
                <option>대한민국 +82</option>
                <option>가나 +233</option>
                <option>네덜란드 +31</option>
                <option>뉴질렌드 +64</option>
            </select>
            <input type="text" placeholder="전화번호 입력" id="input3" name="phone">
            <input type="button" name="phoneCheck" value="인증번호 받기" id="input4" onclick="phoneChecking()" >
            <input type="text" name="phoneText" id="input1" readonly>
            <p id="alert7">필수 정보입니다.</p><br>
            <p id="alert8">인증번호 받기를 누르십시오.</p>
        </section>
            <input type="button" value="가입하기" id="input5" onclick="Join()" >
    </form>
    <footer>
        <h4>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</h4>
        <h4>naver Copyright NAVER Corp. All Rights Reserved.</h4>
    </footer>
</div>
</body>

</html>
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
            width: 100vw;
            height: 100vh;
            background-color: white;
            display: grid;
            justify-content: center;
            background-color: rgb(211, 208, 203);
        }
        div{
            margin-top: 100px;
            display: grid;
            justify-content: center;
            grid-template-rows: 10% 80% 10%;
            grid-template-areas: 
            "header"
            "main"
            "footer"
            ;
        }
        header{
            grid-area: header;
            display: flex;
            justify-content: center;
        }
        main{
            margin-top: 50px;
            grid-area: main;
            text-align: center;
            display: grid;
            grid-template-columns: 80% 20%;
            grid-template-rows: 25% 50% 25%;
            grid-template-areas: 
            'sec1 form'
            'sec2 form'
            'sec3 sec3'
            ;
        }
        .sec1{
            height: 5vh;
            grid-area: sec1;
            display: flex;
            margin-left: 50px;
            gap: 10px;
            color: rgb(62, 224, 56);
        }
        a{
            font-size: 2em;
            text-shadow: 2px 2px 2px gray;
        }
        .sec2{
            grid-area: sec2;
            display: grid;
            justify-content: center;
        }
        .sec3{
            grid-area: sec3;
            display: grid;
            justify-content: center;
        }
        .form{
            margin-top: 150px;
            margin-left: 50px;
            width: 250px;
        	height: 150px;
            grid-area: form;
            display: grid;
            justify-content: center;
            align-items: center;
            border: solid gray 2px;
        }
        footer{
            margin-top: 5vh;
            grid-area: footer;
            display: grid;
            justify-content: center;
            text-align: center;
        }
        #logout{
            margin-left: 30px;
        	width: 150px;
        	height: 50px;
        	font-size: 1.5em;
        	background-color: rgb(62, 224, 56);
        	color: white;
        }
        #search{
            margin-left: 30px;
            border: solid rgb(62, 224, 56) 4px;
            width: 500px;
        	height: 50px;
            font-size: 2em;
        }
        #naver{
            width: 250px;
            height: 50px;
        }
        #img1{
            width: 1000px;
            height: 200px;
            margin-top: 30px;
            margin-left: 50px;
        }
        #img2{
            width: 300px;
            height: 200px;
            margin-left: 10px;
            margin-right: 10px;
        }
        article{
            width: 1000px;
            display: flex;
            align-items: center;
            margin-top: 50px;
            margin-left: 120px;
        }
        button{
            width: 200px;
            height: 80px;
            font-size: 2em;
            color: white;
            background-color: rgb(62, 224, 56);
        }
    </style>
    <title>main</title>
</head>
<body>
    <div>
        <header>
            <a id="a" href="https://www.naver.com/"><img id="naver" src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
            <input id="search" type="text">
        </header>
        <main>
            <section class="sec1">
                <a>메일</a>
                <a>카페</a>
                <a>블로그</a>
                <a>지식iN</a>
                <a>쇼핑</a>
                <a>Pay</a>
                <a>TV</a>
                <a>사전</a>
                <a>뉴스</a>
                <a>증권</a>
                <a>부동산</a>
                <a>지도</a>
            </section>
            <section class="sec2">
                <img id="img1" src="https://www.ibric.org/upload/icons/icon_0034701.png">
            </section>
            <section class="sec3">
                <button onclick="location='_09_boardList.jsp'">게시판</button>
            </section>
            <%
    		String str = (String) session.getAttribute("log");
            %>
            <form class="form" action="_07_logout.jsp">
                <h2><%=str %>님 환영합니다!</h2>
                <input id="logout" type="submit" value="로그아웃">
            </form>
        </main>
        <footer>
            <p>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</p><br>
            <p>naver Copyright NAVER Corp. All Rights Reserved.</p>
        </footer>
    </div>

</body>
</html>
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
            height: 150vh;
            background-color: white;
            display: grid;
            justify-content: center;
        }
        div{
            margin-top: 100px;
            display: grid;
            justify-content: center;
            grid-template-rows: 10% 85% 5%;
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
            grid-area: main;
            text-align: center;
            display: grid;
            grid-template-areas: 
            'sec1 form'
            'sec2 form'
            ;
        }
        .sec1{
            grid-area: sec1;
            display: flex;
            margin-left: 50px;
            font-size: 2em;
            gap: 10px;
            color: rgb(62, 224, 56);
        }
        .sec2{
            grid-area: sec2;
            display: grid;
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
        h1{
            font-size: 3em;
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
            border: solid black 1px;
            width: 1000px;
            display: flex;
            align-items: center;
            margin-top: 50px;
            margin-left: 120px;
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
                <article>
                    <img id="img2" src="https://lh3.googleusercontent.com/proxy/fFCc0bWa8APV4dRaLsRm7XAhIBR7oRASKLwSiNrGBixOBOWYK_yMk8N0QimyF96IrRDcjgrfGVanVRU9v28C3HEEDVLLI5OUX72x2MNpwzjJR_hXdYEF">
                    <p>목숨 걸고도 못 간다는 세계의 위험한 섬들
                        무인도는 동경의 대상이며, 물과 식량만 휴대한다면 여행하기 안전한 장소로 인식되곤합니다. 그러나 아름다운 해변과 조용한 숲으로 이루어진 무인도라 할지라도 여행하기 최고의 장소는 아닐 수도 있는데요.천혜의 비경으로 불리는 무인도에 아무것도 모르고 발을 들여놓는 순간, 전혀 생각지도 못했던 위험이 도사리고 있을수도 있습니다. 아래에 여러가지 이유로 방문하기 위</p>
                </article>
                <article>
                    <img id="img2" src="https://newsimg.sedaily.com/2021/11/08/22TXQ8CS4L_1.jpg">
                    <p>목숨 걸고도 못 간다는 세계의 위험한 섬들
                        무인도는 동경의 대상이며, 물과 식량만 휴대한다면 여행하기 안전한 장소로 인식되곤합니다. 그러나 아름다운 해변과 조용한 숲으로 이루어진 무인도라 할지라도 여행하기 최고의 장소는 아닐 수도 있는데요.천혜의 비경으로 불리는 무인도에 아무것도 모르고 발을 들여놓는 순간, 전혀 생각지도 못했던 위험이 도사리고 있을수도 있습니다. 아래에 여러가지 이유로 방문하기 위</p>
                </article>
                <article>
                    <img id="img2" src="https://w.namu.la/s/3d571ce80dbea6651a22b676f986014fba0db76f1df80b43e45198266679a00415f5c636fd32bb8a218ae6d08d78442458d6859196f48540a98688112524dcabb5f43697c23c7515df860828bddec734077976c66ebc1a162c9a3b89053dc561">
                    <p>목숨 걸고도 못 간다는 세계의 위험한 섬들
                        무인도는 동경의 대상이며, 물과 식량만 휴대한다면 여행하기 안전한 장소로 인식되곤합니다. 그러나 아름다운 해변과 조용한 숲으로 이루어진 무인도라 할지라도 여행하기 최고의 장소는 아닐 수도 있는데요.천혜의 비경으로 불리는 무인도에 아무것도 모르고 발을 들여놓는 순간, 전혀 생각지도 못했던 위험이 도사리고 있을수도 있습니다. 아래에 여러가지 이유로 방문하기 위</p>
                </article>
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
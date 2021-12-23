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
            background-color: rgb(211, 208, 203);
            display: grid;
            justify-content: center;
        }
        div{
            margin-top: 100px;
            display: grid;
            justify-content: center;
            grid-template-rows: 30% 50% 20%;
            grid-template-areas: 
            "header"
            "main"
            "footer"
            ;
        }
        header{
            grid-area: header;
            display: grid;
            justify-content: center;
        }
        main{
            grid-area: main;
            text-align: center;
            display: grid;
            justify-content: center;
        }
        footer{
            margin-top: 5vh;
            grid-area: footer;
        }
        h1{
            font-size: 3em;
        }
        input{
            margin-top: 100px;
            margin-left: 20px;
            width: 22vw;
            height: 4vh;
        	font-size: 2em;
        	background-color: rgb(62, 224, 56);
        	color: white;
        }
        img{
            width: 250px;
            height: 50px;
        }
    </style>
    <title>logout</title>
</head>
<body>
	<%
	session.removeAttribute("log");
	String str = (String) session.getAttribute("log");
	String s = String.format("Log : %s", str);
	%>
    <div>
        <header>
            <a id="a" href="https://www.naver.com/"><img src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
        </header>
        <main>
            <form method="post" action="_05_login.jsp">
                <h1>로그아웃 하셨습니다.</h1><br><br>
                <h1><%=s %></h1><br><br>
                <input type="submit" value="로그인 페이지로">
            </form>
        </main>
        <footer>
            <p>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</p><br>
            <p>naver Copyright NAVER Corp. All Rights Reserved.</p>
        </footer>
    </div>

</body>
</html>
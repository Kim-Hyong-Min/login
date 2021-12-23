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
        }
        div{
            display: grid;
            justify-content: center;
        }
        header{
            margin-top: 4vw;
            display: grid;
            justify-content: center;
        }
        main{
            margin-top: 4vw;
            border: solid 1px gray;
            display: grid;
            justify-content: center;
            align-items: center;
            width: 25vw;
            height: 25vh;
        }
        form{
            display: grid;
            justify-content: center;
        }
        footer{
            margin-top: 5vw;
            display: grid;
            justify-content: center;
        }
        p{
            text-align: center;
        }
        input{
            width: 22vw;
            height: 4vh;
            font-size: 1.5em;
        }
        #submit{
            background-color: rgb(62, 224, 56);
            color: white;
        }
        img{
            width: 250px;
            height: 50px;
        }
        #alert{
        	font-size: 1.7em;
        	color: red;
        	visibility: hidden;
        }
    </style>
    <title>login</title>
</head>
<body>
    <div>
        <header>
            <a id="a" href="https://www.naver.com/"><img src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
        </header>
        <main>
            <form method="post" action="_06_loginPro.jsp" id="form">
                <h2>ID 로그인</h2><br>
                <input type="text" name="id" placeholder="아이디" id="id">
                <input type="password" name="pw" placeholder="비밀번호" id="pw"><br><br>
            </form>
                <input type="button" onclick="loginCheck()" value="로그인" id="submit"><br>
        </main>
        <footer>
        	<p id="alert">아이디 혹은 비밀번호를 입력하세요</p><br>
            <p>이용약관 | 개인정보처리방침 | 책임의 한계와 법적고지 | 회원정보 고객센터</p><br>
            <p>naver Copyright NAVER Corp. All Rights Reserved.</p>
        </footer>
    </div>
    <script>
    function loginCheck(){
    	const loginForm = document.querySelector("#form");
    	const alert = document.querySelector("#alert");
    	
    	if(loginForm.id.value === "" || loginForm.pw.value === ""){
    		alert.style.visibility = "visible";
    	}
    	else if(loginForm.id.value !== "" && loginForm.pw.value !== ""){
    		alert.style.visibility = "hidden";
    		form.submit();
    	}
    }
    </script>
</body>
</html>
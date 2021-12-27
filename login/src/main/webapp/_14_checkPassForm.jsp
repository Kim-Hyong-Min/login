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
        div{
            width: 100vw;
            height: 150vw;
            display: grid;
            grid-template-columns: auto;
            grid-template-rows: 10% 80% 10%;
            grid-template-areas: 
            "header"
            "main"
            "footer"
            ;
            background-color: rgb(211, 208, 203);
        }
        header{
            margin-top: 30px;
            grid-area: header;
            display: grid;
            justify-content: center;
            font-size: 2em;
        }
        main{
            grid-area: main;
            display: grid;
            justify-content: center;
        }
        main{
            display: grid;
            justify-content: center;
        }
        footer{
            grid-area: footer;
        }
        #password{

        }
        #submit{
            
        }
    </style>
    <title>checkPass</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String code = request.getParameter("code");
	%>
    <div>
        <header>
            <h2>비밀번호 입력</h2>
        </header>
        <main>
            <form method="post" action="_15_checkPassPro.jsp">
                <input id="password" name="password" type="password">
                <input type="hidden" name="code" value="<%=code %>">
                <input id="submit" type="submit" value="입력">
                <input id="cancle" type="button" value="취소" onclick="location='_09_boardList.jsp'">
            </form>
        </main>
        <footer></footer>
    </div>
</body>
</html>
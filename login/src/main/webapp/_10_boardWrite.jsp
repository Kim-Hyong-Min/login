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
            height: 120vw;
            display: grid;
            grid-template-columns: auto;
            grid-template-rows: 20% 40% 40%;
            grid-template-areas: 
            "header"
            "main"
            "footer"
            ;
            background-color: rgb(211, 208, 203);
        }
        header{
            margin-top: 100px;
            grid-area: header;
            display: grid;
            justify-content: center;
            text-align: center;
            font-size: 2em;
        }
        main{
            grid-area: main;
            display: grid;
            justify-content: center;
        }
        form{
            width: 80vw;
            height: 60vh;
            display: grid;
            justify-content: center;
            gap: 5px;
        }
        #input1{
            width: 50vw;
            height: 3vh;
        }
        textarea{
            width: 60vw;
            height: 40vh;
            resize: none;
        }
        #input2{
            width: 150px;
            height: 60px;
            color: white;
            font-size: 1.5em;
            background-color: rgb(62, 224, 56);
        }
        p{
            display: flex;
            justify-content: center;
            gap: 50px;
        }
        span{
            font-size: 1.5em;
        }
        footer{
            grid-area: footer;
        }
    </style>
    <title>boardWrite</title>
</head>
<body>
    <div>
        <header>
            <h1>게시글 작성</h1>
        </header>
        <main>
            <form method="post" action="_11_boardWritePro.jsp">
                <span>제  목 : <input id="input1" type="text" name="title" placeholder="제목을 입력하세요"></span>
                <textarea name="content" placeholder="내용을 입력하세요"></textarea><br>
                <span>페스워드 : <input id="input1" type="password" name="passward" placeholder="비밀번호를 입력하세요"></span><br><br>
                <% String id = (String) session.getAttribute("log"); %>
                <input type="hidden" name="id" value=<%=id %>>
                <p>
                <input id="input2" type="submit" value="작성완료">
                <input id="input2" type="button" onclick="location='_09_boardList.jsp'" value="뒤로가기">
                </p>
            </form>
        </main>
        <footer>

        </footer>
    </div>
</body>
</html>
<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
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
        span{
            font-size: 1.5em;
        }
        footer{
            grid-area: footer;
            display: flex;
            justify-content: center;
            gap: 50px;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <title>boardWrite</title>
</head>
<body>
    <%
	int code = Integer.parseInt(request.getParameter("code"));
    
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO board = null;
	for(int i=0; i<dao.getBoard().size(); i++){
		if(dao.getBoard().get(i).getCode() == code){
			board = dao.getBoard().get(i);
		}
	}
	dao.viewBoard(board);
	%>
    <div>
        <header>
            <h1>게시글 수정</h1>
        </header>
        <main>
                <span>제  목 : <input id="title" type="text" name="title" placeholder="제목을 입력하세요" value="<%=board.getTitle() %>"></span>
                <textarea id="content" name="content" placeholder="내용을 입력하세요"  value="<%=board.getContent() %>"></textarea><br>
                <span>페스워드 : <input id="password" type="password" name="passward" placeholder="비밀번호를 입력하세요"></span><br><br>
            <form class="form1" method="post" action="_13_boardUpdatePro.jsp">
                <input id="title1" type="hidden" name="title">
                <input id="content1" type="hidden" name="content">
                <input id="password1" type="hidden" name="password">
                <input id="input3" type="hidden" name="code" value="<%=board.getCode() %>">
            </form>
          	<form class="form2" method="post" action="_16_boardDeletePro.jsp">
          	    <input id="title1" type="hidden" name="title">
                <input id="content1" type="hidden" name="content">
                <input id="password1" type="hidden" name="password">
                <input id="input3" type="hidden" name="code" value="<%=board.getCode() %>">
            </form>
        </main>
        <footer>
                <input id="input2" type="button" value="확인" onclick="typeChange(0)">
                <input id="input2" type="button" value="삭제" onclick="typeChange(1)">
                <input id="input2" type="button" onclick="location='_09_boardList.jsp'" value="취소">
        </footer>
    </div>
        <script>
        $("#title").change(function(){
            $('#title1').val($(this).val());
        });
        $("#content").change(function(){
            $('#content1').val($(this).val());
        });
        $("#password").change(function(){
            $('#password1').val($(this).val());
        });
        function typeChange(num){
        	if(num === 0){
            const form = document.querySelector(".form1");
                form.submit();        		
        	}
        	else{
                const form = document.querySelector(".form2");
                form.submit();   
        	}
        }
    </script>
</body>
</html>
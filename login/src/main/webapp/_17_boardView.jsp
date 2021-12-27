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
        #input{
            width: 150px;
            height: 60px;
            color: white;
            font-size: 1.5em;
            background-color: rgb(62, 224, 56);
        }
        #list{
            width: 150px;
            height: 60px;
            color: white;
            font-size: 1.5em;
            background-color: rgb(62, 224, 56);
        }
        #like{
            width: 150px;
            height: 60px;
            color: white;
            font-size: 1.5em;
            background-color: rgb(56, 22, 245);
        }
        span{
            font-size: 1.5em;
            margin-left: 5vw;
            background-color: blue;
        }
        footer{
            grid-area: footer;
            display: flex;
            justify-content: center;
            gap: 50px;
        }
        .sec{
            display: grid;
            grid-template-areas: 
            'arti1 arti1'
            'arti2 arti3'
            'arti4 arti5'
            ;
            gap: 50px;
        }
        #arti1{
            grid-area: arti1;
            text-align: center;
            font-size: 1.7em;
        }
        #arti2{
            grid-area: arti2;
        }
        #arti3{
            grid-area: arti3;
            text-align: right;
        }
        #arti4{
            grid-area: arti4;
        }
        #arti5{
            grid-area: arti5;
            text-align: right;
        }
    </style>
    <title>boardWrite</title>
</head>
<body>
    <div>
        <header>
            <h1>게시글 보기</h1>
        </header>
        <main>
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
                <section class="sec">
                    <article id="arti1">제  목 : <%=board.getTitle() %></article>
                    <article id="arti2">작성자 : <%=board.getId() %></article>
                    <article id="arti3">작성일 : <%=board.getDate() %></article>
                    <article id="arti4">조회수 : <%=board.getView()+1 %></article>
                    <article id="arti5">좋아요 : <%=board.getLike() %></article>
                </section>
                <textarea name="content" readonly><%=board.getContent() %></textarea><br>
            <form id="form" method="post" action="_14_checkPassForm.jsp">
                <input type="hidden" name="code" value="<%=board.getCode() %>">
            </form>
        </main>
        <footer>
               <%String id = (String) session.getAttribute("log");
                if(board.getId().equals(id)){%>
                	<input id="input" type="submit" value="수정" form="form">
            <%
                }%>
                <input type="button" id="list" onclick="location.href='_09_boardList.jsp'" value="목록">
                <input type="button" id="like" onclick="location.href='_18_boardLikePro.jsp?code='+<%=code %>" value="추천">  
        </footer>
    </div>
</body>
</html>
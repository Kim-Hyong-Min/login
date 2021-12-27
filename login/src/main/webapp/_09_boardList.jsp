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
            height: 150vw;
            display: grid;
            grid-template-columns: auto;
            grid-template-rows: 7% 3% 80% 10%;
            grid-template-areas: 
            "header"
            "nav"
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
        nav{
            margin-top: 30px;
            grid-area: nav;
            display: flex;
            justify-content: right;
            margin-right: 220px;
            gap: 20px;
        }
        main{
            grid-area: main;
            display: grid;
            justify-content: center;
        }
        table{
            margin-top: 50px;
            background-color: white;
            width: 70vw;
            height: 5vh;
            text-align: center;
        }
        #tr{
            height: 3vh;
        }
        #title{
            height: 5vh;
            font-size: 1.1em;
            color: white;
            background-color: rgb(62, 224, 56);
        }
        footer{
            grid-area: footer;
        }
        button{
            width: 120px;
            height: 60px;
            color: white;
            font-size: 1.1em;
            background-color: rgb(62, 224, 56);
        }
    </style>
    <title>board</title>
</head>
<body>
    <div>
        <header>
            <h1>자유게시판</h1>
        </header>
        <nav><button onclick="location='_08_main.jsp'">메인으로</button><button onclick="location='_10_boardWrite.jsp'">게시글 작성</button></nav>
        <main>
            <table border="5">
                <tr id="title">
                    <td id="title1" style="width: 4vw">번 호</td>
                    <td id="title2" style="width: 30vw">제  목</td>
                    <td id="title3" style="width: 10vw">작성자</td>
                    <td id="title4" style="width: 5vw">조회수</td>
                    <td id="title5" style="width: 6vw">좋아요</td>
                    <td id="title6" style="width: 15vw">작성일자</td>
                </tr>
                <%
    			
            	BoardDAO dao = BoardDAO.getInstance();
                
                for(int i=0; i<dao.getBoard().size(); i++){
                	%>
                <tr id="tr">
                    <td><%=dao.getBoard().get(i).getCode() %></td>
                    <td><a href="_17_boardView.jsp?code=<%=dao.getBoard().get(i).getCode() %>" ><%=dao.getBoard().get(i).getTitle() %></a></td>
                    <td><%=dao.getBoard().get(i).getId() %></td>
                    <td><%=dao.getBoard().get(i).getView() %></td>
                    <td><%=dao.getBoard().get(i).getLike() %></td>
                    <td><%=dao.getBoard().get(i).getDate() %></td>
                </tr>
                	<%
                }
                
                %>
            </table>
        </main>
        <footer></footer>
    </div>
</body>
</html>
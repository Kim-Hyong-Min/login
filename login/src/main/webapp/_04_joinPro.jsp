<%@page import="java.util.ArrayList"%>
<%@page import="user.userDAO"%>
<%@page import="user.userDTO"%>
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
            background-color: rgb(211, 208, 203);
            display: grid;
            justify-content: center;
        }
        div{
            margin-top: 100px;
            display: grid;
            justify-content: center;
            grid-template-rows: 20% 20% 60%;
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
            margin-top: 10vh;
            grid-area: footer;
            display: grid;
            align-items: flex-start;
            vertical-align: top;
            text-align: center;
            grid-template-rows: 20% 80%;
            grid-template-areas: 
            "h2"
            "ul"
            ;
        }
        h2{
            grid-area: h2;
        }
        ul{
            grid-area: ul;
            font-size: 1.7em;
        }
        h1{
            font-size: 3em;
        }
        input{
            margin-top: 100px;
            margin-left: 20px;
        	width: 400px;
        	height: 80px;
        	font-size: 2em;
        	background-color: rgb(62, 224, 56);
        	color: white;
        }
        img{
            width: 250px;
            height: 50px;
        }
    </style>
    <title>joinPro</title>
</head>

<body>
<div>
     <header>
         <a id="a" href="https://www.naver.com/"><img src="https://cdn.imweb.me/upload/S201812175c16eea88c6ac/5c1763d5acf88.png"></a>
     </header>
     <main>
    <%
	request.setCharacterEncoding("utf-8");
    
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String year = request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email");
	String phone = request.getParameter("phone");
	
	userDAO dao = userDAO.getInstance();
	
	if(dao.checkUser(id)){
		userDTO user = new userDTO(id, pw, name, year, month, day, gender, email, phone);
		// ???????????? ??????
		dao.addUser(user);
		%>
		<form action="_05_login.jsp">
			<h1><%=id %>??? ????????? ???????????????!</h1><br><br>
			<input type="submit" value="????????? ????????????">
		</form>
	<% }
	else{%>
		<form action="_03_join.jsp">
			<h1><%=id %>??? ????????? ????????? ?????????.</h1><br><br>
			<input type="submit" value="????????????">
		</form>
	<%}%>
	</main>
	<footer>
	<h2>????????????</h2>
		<ul>
			<%
		ArrayList<userDTO> users = dao.getUsers();
		
		for(int i=0; i<users.size(); i++){
			%><li><%=users.get(i).toString() %></li><%
		}%>
		</ul>
	</footer>
</div>
</body>

</html>
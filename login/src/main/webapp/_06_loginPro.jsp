<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="user.userDAO"%>
<%@page import="user.userDTO"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>loginPro</title>
</head>
<body>
    <%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		userDAO dao = userDAO.getInstance();
		if(dao.loginUser(id, pw)){
			session.setAttribute("log", id);
		String str = (String) session.getAttribute("log");
		String s = String.format("Log : %s", str);

			response.sendRedirect("_08_main.jsp");
		}
		else{
			response.sendRedirect("_05_login.jsp");
		}
	%>
</body>
</html>
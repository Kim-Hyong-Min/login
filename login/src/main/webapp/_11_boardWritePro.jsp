<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%
	request.setCharacterEncoding("utf-8");
    
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String passward = request.getParameter("passward");
	String id = request.getParameter("id");
	
	BoardDAO dao = BoardDAO.getInstance();
	
	if(!title.equals("") && !passward.equals("")){
		BoardDTO board = new BoardDTO(title, content, id, passward);
		dao.addBoard(board);
		response.sendRedirect("_09_boardList.jsp");
	}
	else if(title.equals("") || passward.equals("")){
		response.sendRedirect("_10_boardWrite.jsp");
	}
	
	%>
</body>
</html>
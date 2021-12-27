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
	 
	int code = Integer.parseInt(request.getParameter("code"));
	String title = request.getParameter("title");
	String content = request.getParameter("content");
	String password = request.getParameter("password");
	if(!title.equals("") && !content.equals("") && !password.equals("")){
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO board = new BoardDTO(title, content, password);
			dao.updateBoard(board, code);
			response.sendRedirect("_09_boardList.jsp");
	}
	else if(title.equals("") || content.equals("") || password.equals("")){
		response.sendRedirect("_12_boardUpdateForm.jsp?code="+request.getParameter("code"));
	}

	%>
</body>
</html>
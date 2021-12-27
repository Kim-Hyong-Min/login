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
int code = Integer.parseInt(request.getParameter("code"));

	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO board = null;
	for(int i=0; i<dao.getBoard().size(); i++){
		if(dao.getBoard().get(i).getCode() == code){
			board = dao.getBoard().get(i);
		}
	}
	dao.likeBoard(board);
	response.sendRedirect("_17_boardView.jsp?code="+request.getParameter("code"));
%>
</body>
</html>
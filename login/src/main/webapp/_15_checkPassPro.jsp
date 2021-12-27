<%@page import="board.BoardDTO"%>
<%@page import="board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkPassPro</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	int code = Integer.parseInt(request.getParameter("code"));
	String password = request.getParameter("password");
	
	BoardDAO dao = BoardDAO.getInstance();
	BoardDTO board = null;
	for(int i=0; i<dao.getBoard().size(); i++){
		if(dao.getBoard().get(i).getCode() == code){
			board = dao.getBoard().get(i);
		}
	}
	
	if(password.equals(board.getPassword())){
		response.sendRedirect("_12_boardUpdateForm.jsp?code="+request.getParameter("code"));
	}
	else{
		response.sendRedirect("_14_checkPassForm.jsp?code="+request.getParameter("code"));
	}
	
	%>
</body>
</html>
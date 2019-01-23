<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String firstName = request.getParameter("fn");
	String lastName = request.getParameter("ln");
	String email = request.getParameter("email");
	
	EmaillistVo vo = new EmaillistVo();
	vo.setFirstName(firstName);
	vo.setLastName(lastName);
	vo.setEmail(email);
	
	boolean result = new EmaillistDao().insert(vo);
	
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	if(result) {
%>
	<h1>등록 성공</h1>
<%
	response.sendRedirect("/emaillist1");
	} else {
%>
	<h1>등록 실패</h1>
<%
	}
%>
</body>
</html>
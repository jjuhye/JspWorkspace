<%@page import="basic.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./member.js"></script>
</head>
<body>
	
	<%
	String id=request.getParameter("loginId");
	String pw=request.getParameter("loginPw");
	
	int idIdx=MemberDAO.getInstance().checkId(id);
	
	boolean check=MemberDAO.getInstance().checkPw(pw, idIdx);
		
	if(!check){
		%>
		<script>msgGo("로그인 실패","03_21_loginForm.jsp")</script>
		<%
	}else{
		session.setAttribute("idx",idIdx);
		if(idIdx==0){
		%>
		<script>msgGo("관리자 로그인 성공","01_11_adminMain.jsp")</script>
		<%
		}else{
		%>
		<script>msgGo("<%=id%>님 로그인 성공","02_main.jsp")</script>
		<%
		}
	}
	
	%>

</body>
</html>
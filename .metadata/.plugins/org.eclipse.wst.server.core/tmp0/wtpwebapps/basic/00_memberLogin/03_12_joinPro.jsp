<%@page import="basic.MemberDAO"%>
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
request.setCharacterEncoding("utf-8");

String id=request.getParameter("newId");
if(MemberDAO.getInstance().isID(id)){
	%>
	<script>msgGo("이미 존재하는 아이디","03_11_joinForm.jsp")</script>
	<%
}else{
	String pw=request.getParameter("newPw");
	String name=request.getParameter("newName");
	String gender="";
	if(request.getParameter("newGen").equals("m")){
		gender="남성";
	}else{
		gender="여성";
	}
	
	MemberDAO.getInstance().addMember(id, pw, name, gender);
	%>
	<script>msgGo("회원가입 완료","02_main.jsp")</script>
<%}%>

</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./member.css">
</head>
<body>
<div align="center">
	<h1> 관리자 페이지(회원정보 확인하기) </h1>
	<table border="1">
	    <tr><th>아이디</th><th>패스워드</th><th>이름</th><th>성별</th><th>삭제</th></tr>
	    
	    <%
	    List<String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
	    List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
	    List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("nameList"));
	    List<String> genderlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));
	    
	    for(int i=0; i<idlist.size(); i++){ %>
	    <tr><td><%=idlist.get(i) %></td><td><%=pwlist.get(i) %></td>
	    	<td><%=namelist.get(i) %></td><td><%=genderlist.get(i) %></td>
	    	<td><button onclick="location.href='01_13_adminUserDelete.jsp?delIdx=<%=i %>'">삭제</button></td>
	    <%}%>
	</table><br>
	<a href="01_11_adminMain.jsp">뒤로가기</a>
</div>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
		function msgGo(msg, url){
			alert(msg);
			location.href=url;
		}
	</script>
	<%
	List<String> idlist = (List<String>)session.getAttribute("idList");
	List<String> pwlist = (List<String>)session.getAttribute("pwList");
	
	String loginId=request.getParameter("loginId");
	String loginPw=request.getParameter("loginPw");
	
	int idx=-1;
	if(idlist.contains(loginId)){
		int tempIdx=idlist.indexOf(loginId);
		if(pwlist.get(tempIdx).equals(loginPw)){
			idx=tempIdx;
		}
	}
	if(idx==-1){
		%>
		<script>msgGo("로그인 실패","03_21_loginForm.jsp")</script>
		<%
	}else{
		session.setAttribute("idx",idx );
		if(idlist.get(idx).equals("admin")){
			%>
			<script>msgGo("관리자 로그인 성공","01_11_adminMain.jsp")</script>
		<%
		}else{
			%>
			<script>msgGo("<%=loginId%>님 로그인 성공","02_main.jsp")</script>
			<%
		}
	}
	
	%>

</body>
</html>
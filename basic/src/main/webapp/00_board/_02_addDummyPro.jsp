<%@page import="basic.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="./board.js"></script>
</head>
<body>
<%
BoardDAO.getInstance().addDummy();
%>
<script>
msgGo("더미게시글 추가 완료","_01_boardList.jsp");
</script>
</body>
</html>
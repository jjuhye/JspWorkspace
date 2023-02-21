<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	table{
	text-align: center;
	}
	
	tr:nth-child(1){
	background-color: powderblue;
	font-weight: bold;
	}
	
	td{
	padding : 5px 10px;
	}
</style>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	int num=Integer.parseInt(request.getParameter("num"));
	String name=request.getParameter("name");
	String grade=request.getParameter("grade");
	String subject=request.getParameter("subject");
	String memo=request.getParameter("memo");
	String[] hobby=request.getParameterValues("hobbies");
	String hobbies="";
	for(int i=0; i<hobby.length; i++){
		hobbies+=hobby[i]+" ";
	}
%>

<table border="1">
<tr>
<td>번호</td>
<td>이름</td>
<td>학년</td>
<td>과목</td>
<td>취미</td>
<td>메모</td>
</tr>
<tr>
<td><%=num %></td>
<td><%=name %></td>
<td><%=grade %></td>
<td><%=subject %></td>
<td><%=hobbies %></td>
<td><%=memo %></td>
</tr>
</table>

</body>
</html>
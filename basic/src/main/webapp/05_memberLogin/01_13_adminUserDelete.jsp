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
<%
int delidx=Integer.parseInt(request.getParameter("delIdx"));

List<String> idlist = new ArrayList<>((List<String>)session.getAttribute("idList"));
List<String> pwlist = new ArrayList<>((List<String>)session.getAttribute("pwList"));
List<String> namelist = new ArrayList<>((List<String>)session.getAttribute("nameList"));
List<String> genderlist = new ArrayList<>((List<String>)session.getAttribute("genderList"));

idlist.remove(delidx);
pwlist.remove(delidx);
namelist.remove(delidx);
genderlist.remove(delidx);

session.setAttribute("idList",idlist );
session.setAttribute("pwList",pwlist );
session.setAttribute("nameList",namelist );
session.setAttribute("genderList",genderlist );
/* history.go(-1); 기존정보가 보이기때문에 유의하여 사용*/
response.sendRedirect("01_12_adminUserList.jsp");
%>
</body>
</html>
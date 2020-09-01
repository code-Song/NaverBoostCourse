<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%-- JSP주석입니다!!
	 여러줄로 사용가능합니다.
--%>
<!-- html 주석입니다. -->
<%
	//자바주석입니다.
	for(int i = 1; i <= 5; i ++)
	{
%>
<h<%= i %>>아름다운 한글</h<%= i %>>
<%
	}
%>
</body>
</html>
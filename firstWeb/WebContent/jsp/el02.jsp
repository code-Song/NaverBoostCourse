<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
 <%
 	request.setAttribute("k", 10);
 	request.setAttribute("m", true);
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

k :	${k } <br>
k + 5 : %{k+5} <br>
k - 5 : %{k-5} <br>
k * 5 : %{k*5} <br>
k / 5 : %{k/5} <br><br>

k : ${k } <br>
m : ${m } <br>	

</body>
</html>
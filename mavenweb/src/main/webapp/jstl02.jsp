<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   

<%--
	request.setAttribute("n", 10);	
--%>
<c:set var="n" scope="request" value="10" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

<c:if test="${n == 10 }">
	${n }�� 10�Դϴ�.<br>
</c:if>

</body>
</html>
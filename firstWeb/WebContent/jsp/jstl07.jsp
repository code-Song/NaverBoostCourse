<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<c:set var="t" value="<script type='text/javascript'>alert(1)</script>"/>

${t}

<!-- escapeXml의 값을 true로 주면 코드 그대로 보여준다. -->
<!-- jsp파일 자체에 자바코드가 그대로 보이는 것들은 좋지않다. -->
<c:out value="${t }" escapeXml="true"></c:out>
</body>
</html>
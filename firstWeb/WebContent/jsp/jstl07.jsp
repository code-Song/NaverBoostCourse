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

<!-- escapeXml�� ���� true�� �ָ� �ڵ� �״�� �����ش�. -->
<!-- jsp���� ��ü�� �ڹ��ڵ尡 �״�� ���̴� �͵��� �����ʴ�. -->
<c:out value="${t }" escapeXml="true"></c:out>
</body>
</html>
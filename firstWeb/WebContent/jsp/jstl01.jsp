<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- prefix는 해당 uri의 기능들을 사용할 때 붙일 접두사 => 굳이 c가아니라 cc이렇게 다른글자를 적어도된다. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="lastname" scope="request" value="song"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

성 : ${lastname } <br>
<c:remove var="lastname" scope="request"/>
성 : ${lastname } <br>

</body>
</html>
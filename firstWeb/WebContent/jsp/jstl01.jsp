<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!-- prefix�� �ش� uri�� ��ɵ��� ����� �� ���� ���λ� => ���� c���ƴ϶� cc�̷��� �ٸ����ڸ� ����ȴ�. -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="lastname" scope="request" value="song"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

�� : ${lastname } <br>
<c:remove var="lastname" scope="request"/>
�� : ${lastname } <br>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
id : <%= getId() %> <!-- 표현식 -->
<%! //선언문(Declaration)
	String id = "u001"; //멤버변수 선언
	public String getId(){//메소드 선언
		return id;
	}
%>
</body>
</html>
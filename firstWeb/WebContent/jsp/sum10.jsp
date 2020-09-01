<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- page는 page지시자. 언어는 자바이고 이론적으로 jsp는 내부적으로 다른 언어를 사용할 수는 있지만 자바만 사용.
서블릿할때 응답객체에 contentType을 넣어줬듯이 여기서도 응답타입을 지정 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- jsp는 jsp자체가 동작하는 것이 아니라 서블릿으로 바뀌어서 동작한다. 제일 윗 코드는 아래의 코드들을 어떻게 서블릿으로 바꿔주는지에 대한 명시
아래의 기호는 scriptlet 자바코드를 입력할 수 있는 부분
scriptLet은 서블릿으로 바뀔 때  그냥 scriptLet만 없어진다고 생각하면됨 -->
<%
	int total = 0;
	for(int i = 1; i <= 10; i ++){
		total = total + i;
	}
%>

<!-- 아래의 기호는 표현식 : 변수값을 넣어주는 부분 => 서블릿으로 바뀔 때 out.print()라고 생각하면됨 -->
1부터 10까지의 합 : <%= total %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
Hello!!
<%
	//out.println은 reponse로 넘겨주는 놈의 println
	//system.out.println은 콘솔
	//출력하는 주체가 다름
	//코드를 어디에 적든 다 service에 포함된다. => 응답에 포함되는 건 service밖에 없다.
	System.out.print("jspService()");
%>

<!-- 아래의 기호를 사용하면 service() 바깥쪽에 코드들이 만들어지게 할 수 있다. 
실행 후 내용을 수정하고 다시 실행해보면 destroy => init => service 순으로 실행되는 것 확인-->
<%!
	public void jspInit(){
		System.out.print("jspInit()!!");
	}

	public void jspDestroy(){
		System.out.print("jspDestroy()");
	}
%>
</body>
</html>
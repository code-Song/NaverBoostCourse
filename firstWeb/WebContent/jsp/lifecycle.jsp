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
	//out.println�� reponse�� �Ѱ��ִ� ���� println
	//system.out.println�� �ܼ�
	//����ϴ� ��ü�� �ٸ�
	//�ڵ带 ��� ���� �� service�� ���Եȴ�. => ���信 ���ԵǴ� �� service�ۿ� ����.
	System.out.print("jspService()");
%>

<!-- �Ʒ��� ��ȣ�� ����ϸ� service() �ٱ��ʿ� �ڵ���� ��������� �� �� �ִ�. 
���� �� ������ �����ϰ� �ٽ� �����غ��� destroy => init => service ������ ����Ǵ� �� Ȯ��-->
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
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!-- page�� page������. ���� �ڹ��̰� �̷������� jsp�� ���������� �ٸ� �� ����� ���� ������ �ڹٸ� ���.
�����Ҷ� ���䰴ü�� contentType�� �־������ ���⼭�� ����Ÿ���� ���� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<!-- jsp�� jsp��ü�� �����ϴ� ���� �ƴ϶� �������� �ٲ� �����Ѵ�. ���� �� �ڵ�� �Ʒ��� �ڵ���� ��� �������� �ٲ��ִ����� ���� ���
�Ʒ��� ��ȣ�� scriptlet �ڹ��ڵ带 �Է��� �� �ִ� �κ�
scriptLet�� �������� �ٲ� ��  �׳� scriptLet�� �������ٰ� �����ϸ�� -->
<%
	int total = 0;
	for(int i = 1; i <= 10; i ++){
		total = total + i;
	}
%>

<!-- �Ʒ��� ��ȣ�� ǥ���� : �������� �־��ִ� �κ� => �������� �ٲ� �� out.print()��� �����ϸ�� -->
1���� 10������ �� : <%= total %>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>regTodo</title>
	<link href="regStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<section>
        <article id="head">
            <h1>���� ���</h1>
        </article>  
        <article id="content">
            <p>����ΰ���?</p>
            <input class="what" type="text" placeholder="swift�����ϱ�(24�ڱ���)" maxlength="24" checked/><br>
            <p>���� �����ΰ���?</p>
            <input class="who" type="text" placeholder="ȫ�浿" maxlength="24" checked/><br>
            <p>�켱������ �����ϼ���</p>
            <div class="radio">
                <input type="radio" name="radioPrior" value="1����" checked="checked">1����
                <input type="radio" name="radioPrior" value="2����">2����
                <input type="radio" name="radioPrior" value="3����">3����
            </div>
        </article>
        <article id="bottom">
            <form action="./main.jsp" method="POST">
                <input type="submit" value="<����" class="prevTodo">
            </form>
            <form action="http://localhost:8080/Todo/main" method="POST">
                <input type="submit" value="����" class="submitTodo">
            </form>
            <form>
                <input type="reset" value="���������" class="resetTodo">
            </form>
        </article>
    </section> 
</body>
</html>
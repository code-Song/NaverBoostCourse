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
            <h1>할일 등록</h1>
        </article>  
        <article id="content">
            <p>어떤일인가요?</p>
            <input class="what" type="text" placeholder="swift공부하기(24자까지)" maxlength="24" checked/><br>
            <p>누가 할일인가요?</p>
            <input class="who" type="text" placeholder="홍길동" maxlength="24" checked/><br>
            <p>우선순위를 선택하세요</p>
            <div class="radio">
                <input type="radio" name="radioPrior" value="1순위" checked="checked">1순위
                <input type="radio" name="radioPrior" value="2순위">2순위
                <input type="radio" name="radioPrior" value="3순위">3순위
            </div>
        </article>
        <article id="bottom">
            <form action="./main.jsp" method="POST">
                <input type="submit" value="<이전" class="prevTodo">
            </form>
            <form action="http://localhost:8080/Todo/main" method="POST">
                <input type="submit" value="제출" class="submitTodo">
            </form>
            <form>
                <input type="reset" value="내용지우기" class="resetTodo">
            </form>
        </article>
    </section> 
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>todo등록</title>
	<link href="todoFormStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
<section>
    <article id="head">
        <h1>할일 등록</h1>
    </article>  
    <article id="content">
        <form action="./todoadd" method="POST">
            <p>어떤일인가요?</p>
            <input class="title" name="title" type="text" placeholder="swift공부하기(24자까지)" maxlength="24" checked/><br>
            <p>누가 할일인가요?</p>
            <input class="name" name="name" type="text" placeholder="이름을 입력하세요" maxlength="24" checked/><br>
            <p>우선순위를 선택하세요</p>
            <div class="radio">
                <input type="radio" name="sequence" value="1" checked="checked">1순위
                <input type="radio" name="sequence" value="2">2순위
                <input type="radio" name="sequence" value="3">3순위
            </div>
            <input type="reset" value="내용지우기" class="resetTodo">
            <input type="submit" value="제출" class="submitTodo">
        </form>
        <form action="./MainServlet" method="POST">
            <input type="submit" value="<이전" class="prevTodo">
        </form>
    </article>
</section>    
</body>
</html>
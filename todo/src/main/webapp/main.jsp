<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Todo</title>
	<link href="mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<section>
        <article id="head">
            <h1>나의 해야할 일들</h1>
            <form action="./regTodo.jsp" method="POST">
                <input type="submit" value="새로운 TODO 등록">
            </form>
        </article>  
        <article id="content">
            <div class="TODO">
                <div>TODO</div>    
            </div>
            <div class="DOING">
                <div>DOING</div>    
            </div>
            <div class="DONE">
                <div>DONE</div>    
            </div>
        </article>
    </section>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.connect.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo</title>
	<link href="mainStyle.css" rel="stylesheet" type="text/css">
</head>
<body>
	<section>
        <article id="head">
            <h1>나의 해야할 일들</h1>
            <!-- 서블릿으로 forward -->
            <form action="./todoform" method="POST">
                <input type="submit" value="새로운 TODO 등록">
            </form>
        </article>  
        <article id="content">
            <div class="TODO">
                <div>TODO</div> 
                <c:forEach items="${todoList }" var="todo">
                	<c:if test="${todo.getType() eq 'TODO'}">
	                	<div class="items">
	                		<h4>${todo.getTitle() }</h4>
	                		<p>등록날짜 : ${todo.getRegDate() }, ${todo.getName() }, 우선순위 : ${todo.getSequence() }</p>
	                		<form action="./todotype" method="POST">
	                			<!-- input type="hidden"을 사용하면 보이진않지만 전달은 된다. -->
	                			<input type="hidden" name="id" value="${todo.getId() }">
                        		<input type="submit" class="btn" value="">
                    		</form> 
	                	</div>
                	</c:if>
                </c:forEach>
            </div>
            <div class="DOING">
                <div>DOING</div> 
                <c:forEach items="${todoList }" var="todo">
                	<c:if test="${todo.getType() eq 'DOING'}">
	                	<div class="items">
	                		<h4>${todo.getTitle() }</h4>
	                		<p>등록날짜 : ${todo.getRegDate() }, ${todo.getName() }, 우선순위 : ${todo.getSequence() }</p>
	                		<form action="./todotype" method="POST">
	                			<input type="hidden" name="id" value="${todo.getId() }">
                        		<input type="submit" class="btn" value="">
                    		</form>
	                	</div>
               		</c:if>   
                </c:forEach>
            </div>
            <div class="DONE">
                <div>DONE</div>
                <c:forEach items="${todoList }" var="todo">
                	<c:if test="${todo.getType() eq 'DONE'}">
	                	<div class="items">
	                		<h4>${todo.getTitle() }</h4>
	                		<p>등록날짜 : ${todo.getRegDate() }, ${todo.getName() }, 우선순위 : ${todo.getSequence() }</p>
	                	</div>
               		</c:if>    
                </c:forEach>
            </div>
        </article>
    </section>
</body>
</html>
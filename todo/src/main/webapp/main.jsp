<%@page import="java.util.ArrayList"%>
<%@page import="kr.or.connect.todo.dto.TodoDto"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

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
            <form action="./TodoFormServlet" method="POST">
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
	                		<c:set var="todoSel" scope="session" value="${todo.getId() }"/>
	                		<form action="./todotype" method="POST">
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
	                		<c:set var="todoSel" scope="session" value="${todo.getId() }"/>
	                		<form action="./todotype" method="POST">
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
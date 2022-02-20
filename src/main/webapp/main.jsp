<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>나의 해야할 일들</title>
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/main.css">
<script src="http://code.jquery.com/jquery-1.12.1.js"></script>

</head>
<body>
	<header>
		<div id="logo">
			<div id="title">나의 해야할 일들</div>
			<div id="new-todobtn"><a href="${pageContext.request.contextPath}/add">새로운 TODO 등록</a></div>
		</div>
	</header>
	<section>
		<nav class="menu">
			<ul class="navi">
				<li class="w35h10"><span>TODO</span>
					<ul class="submenu" id="TODO" >
						<c:forEach var="todo" items="${todo_list}">
						<li id="${todo.id }">
							<div class="title">${todo.title }</div>
							<span class="explain">등록날짜: 
							<fmt:parseDate value='${todo.regdate }' var='regdate' pattern='yyyy-MM-dd'/>
							<fmt:formatDate value="${regdate}" pattern="yyyy.MM.dd"/>
							${todo.name }, 우선순위: ${todo.sequence }
							</span>
							<input class="button" type="button" value="▶" onclick="button_click(${todo.id }, 'TODO');"/>
						</li>
						</c:forEach>
					</ul>
				</li>
				<li class="w35h10"><span>DOING</span>
					<ul class="submenu" id="DOING">
						<c:forEach var="doing" items="${doing_list}">	
						<li id="${doing.id}">
							<div class="title">${doing.title }</div>
							<span class="explain">등록날짜: 
							<fmt:parseDate value='${doing.regdate }' var='regdate' pattern='yyyy-MM-dd'/>
							<fmt:formatDate value="${regdate}" pattern="yyyy.MM.dd"/>,
							${doing.name }, 우선순위: ${doing.sequence }
							</span>
							<input class="button" type="button" value="▶" onclick="button_click(${doing.id }, 'DOING');"/>
						</li>
						</c:forEach>
					</ul>
				</li>
				<li class="w35h10"><span>DONE</span>
					<ul class="submenu" id="DONE">
						<c:forEach var="done" items="${done_list}">
						<li id="${done.id}">
							<div class="title">${done.title }</div>
							<span class="explain">등록날짜: 
							<fmt:parseDate value='${done.regdate }' var='regdate' pattern='yyyy-MM-dd'/>
							<fmt:formatDate value="${regdate}" pattern="yyyy.MM.dd"/>
							${done.name }, 우선순위: ${done.sequence }
							</span>
						</li>
						</c:forEach>
					</ul>				
				</li>
			</ul>
		</nav>
	</section>
	<script src="js/main.js" type="text/javascript"></script>
</body>
</html>
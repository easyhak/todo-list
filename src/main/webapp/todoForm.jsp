<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>할일 등록</title>
<link rel="stylesheet" type="text/css" href="css/reset.css">
<link rel="stylesheet" type="text/css" href="css/todoForm.css">
</head>
<body>
	<header>
		<h1 class="title">할일 등록</h1>
	</header>
	<section>
		<div class="content-position">
			<form action="./TodoAddServlet" method="post">
				<div class="q1">
					<span>어떤일인가요?<br></span>
					<input type="text" name="title" placeholder="수학 공부하기"
						maxlength="24" size="40" class="text-design" tabindex="1" required>
				</div>
				<div class="q2">
					<span>누가 할일인가요?<br></span>
					<input type="text" name="name" placeholder="Jimmy" size="25"
						class="text-design" tabindex="2" required>
				</div>
				<div class="q3">
					<span>우선순위를 선택하세요<br> </span>
					<div>
						<input class="radio-btn" type="radio" name="sequence" value="1" tabindex="3" required> 1순위 
						<input class="radio-btn" type="radio" name="sequence" value="2"  required> 2순위 
						<input class="radio-btn" type="radio" name="sequence" value="3" required> 3순위 <br>
					</div>
					
				</div>
				<div class="button-box">
					<input type="button" value="< 이전" class="back-design" onclick="location.href='./todo'"> 
					<input type="submit" value="제출" class="button-design" tabindex="4">
					<input type="reset" value="내용지우기" class="button-design">
				</div>
					
			</form>
		</div>
	</section>
</body>
</html>
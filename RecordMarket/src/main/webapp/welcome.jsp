<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<!-- <%@ page import="java.util.Date" %> -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Record Market Mall</title>

	<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
</head>
<body>
	<%@ include file="menu.jsp" %>
	<body style="background-color: black;
	@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
	font-family: 'Anton', sans-serif;">
	
	<%
		Date date = new Date();
		
		SimpleDateFormat simpleDate = new SimpleDateFormat("yyyy-MM-dd");
		String strdate = simpleDate.format(date);
	%>

	<!-- 변수로 선언하게 되면 선언부 태그 안에 선언한 변수는 전역 변수의 의미를 가지고 스크립틀릿 태그 안에 선언된 변수는 지역 변수가 된다 -->
	<%! 
		String greeting="Record Market Mall";
		String tagline="Welcome to Kim's Record Market!";
		String author_info = "작성자 : 김예원";
	%>
	
	<!-- <div class="jumbotron">  -->
	<div class="jumbotron text-black" style="background-color:hotpink;">
		<div class="container">	
			<h1 class="display-3">
				<%=greeting %> <!-- 출력부 태그로 문자열, 변수값, 함수의 리턴값을 출력한다 -->
			</h1>
		</div>
	</div>
	
	<div class="container">
		<div style="color:hotpink;
		@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
		font-family: 'Anton', sans-serif;">
		<div class="text-center">
			<h3>
				<%=tagline %>
			</h3>
		</div> <hr>
	</div>
			
	<div class="container">
		<div style="color:hotpink;
		@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
		font-family: 'Anton', sans-serif;">
		<div class="text-center">
		
			<!-- 현재 접속 시각 출력 -->
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds(); 
				
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				// out.println("현재 접속 시각: " + CT + "\n");
			%>
			
			<h4>Revision date : <%= strdate %> </h4>
			<h4>Current connection time : <%= CT %> </h4> 
		</div> <hr>
	</div>
	
	<!-- 페이지 속성을 지정한다. 즉 지시자를 입력할 때 사용한다. 지시자는 page(import, session, contentType 속성), include, taglib 등이 있다. 
	그냥 스크립틀릿 태그는 JSP 페이지 안에 Java 코드를 삽입할 때 사용한다. -->
	<%@ include file="footer.jsp" %>
			
</body>
</html>


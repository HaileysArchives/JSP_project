<!-- 상품 목록 출력 웹 페이지 -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="DTO.Record" %>
<%@ page import="DAO.RecordRepository" %>
<!-- 기존에 작성된 useBean 액션 태그를 삭제하고 상품 접근 클래스 DAO.RecordRepository 패키지로 변경 -->

<%-- <!-- 자바빈즈로 생성한 RecordRepository 클래스를 사용하도록 useBean 작성 -->
<jsp:useBean id="recordDAO" class="DAO.RecordRepository" scope="session" /> --%>

<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->

<meta charset="UTF-8">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<body style="background-color: black;">
	
	<div class="jumbotron text-black" style="background-color:hotpink; 
	@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
	font-family: 'Anton', sans-serif;">
		<div class="container">	
			<h1 class="display-3">List of Record</h1>
		</div>
	</div>
	
	<%
		RecordRepository dao = RecordRepository.getInstance();
		ArrayList<Record> listOfRecords = dao.getAllRecords();
		// getAllRecords() 메소드를 호출하여 반환 결과 값을 ArrayList<Record> 객체 타입의 변수 listOfRecords에 저장
	%>
	
<%-- 	<% // RecordRepository 클래스의 getAllRecords() 메소드를 호출하여 반환된 결과 값을 listOfRecords에 저장
		ArrayList<Record> listOfRecords = dao.getAllRecords();
	%>  --%>
	
	<div class="container text-white">
		<div class="row" align="center">
			<% // listOfRecords에 저장된 상품 목록 개수만큼 실행하도록 반복
				for(int i = 0; i < listOfRecords.size(); i++) {
					Record record = listOfRecords.get(i);
			%> 
			<div class="col-md-4">
				<img src="./resources/images/<%=record.getFilename() %>" 
				style = "width: 100%">  
				<h3 style="font-size:20px; color:hotpink
				﻿@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);﻿
				font-family:'NanumSquare', snas-serif;"><br><%=record.getName() %></h3>
				
				<p style="font-size:12px; color:hotpink;
				﻿@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);﻿
				font-family:'NanumSquare', snas-serif;"><%=record.getDescription() %>
				
				<p style="font-size:17px; color:white;
				﻿@import url(https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css);﻿
				font-family:'NanumSquare', snas-serif;"><%=record.getUnitPrice() %>원
				
				<p><a href="./record.jsp?id=<%=record.getRecordId() %>" class="btn btn-outline-light" role="button">
					상세정보 &raquo; 
				   </a> <!-- 상품 아이디에 대해(일치하는지) 상품 상제 정보 버튼 만들기 -->
			</div>
			
			<%
				}
			%>
		</div>

		<hr> <!-- 구분선 -->
	</div>
	
	<%@ include file="footer.jsp" %>			
</body>
</html>
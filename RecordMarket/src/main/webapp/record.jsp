<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="DTO.Record" %>
<%@ page import="DAO.RecordRepository" %>

<%-- <jsp:useBean id="recordDAO" class="DAO.RecordRepository" scope="session" /> --%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta charset="UTF-8">
<title>상품 상세 정보</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	
	<div class="jumbotron">
		<div class="contatiner">
			<h1 class="display-3">
				상품 정보
			</h1>
		</div>
	</div>
	
	<%
		String id = request.getParameter("id");
	
		RecordRepository dao = RecordRepository.getInstance();
		Record record = dao.getRecordById(id);
		// RecordRepository 클래스의 객체 변수 instance를 호출하는 getInstance() 메소드 작성
		// getRecordById() 메소드 호출해서 반환 결과 값을 Record 객체 타입의 변수 record에 저장
	%> 
	
<%-- 	<% // 상품 목록 페이지로부터 전달되는 상품 아이디를 전송받도록 request 내장 객체의 getParameter() 메소드 작성
		String id = request.getParameter("id");
		Record record = recordDAO.getRecordById(id);
	%> <!-- useBean 액션 태그에 id 속성 값을 통해 RecordRepository 클래스의 getRecordById() 메소드를 호출하여 반환된 결과값을 Record 객체 타입의 변수 record에 저장 --> --%>
	
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<h3><%=record.getName() %></h3>
				<p><%=record.getDescription() %>
				<p><b>상품 코드: </b>
				<span class="badge badge-danger">
					<%=record.getRecordId() %>
				</span>
				<p><b>아티스트</b> : <%=record.getArtist() %>
				<p><b>제작사</b> : <%=record.getProduction() %>
				<p><b>레이블</b> : <%=record.getRecordLabel() %>
				<p><b>재고 수</b> : <%=record.getUnitsInStock() %>
				<p><b>제조국</b> : <%=record.getCountryOfManu() %>
				<p><b>출시일)</b> : <%=record.getReleaseDate() %>
				<p><b>상태</b> : <%=record.getCondition() %>
				<br>
				<br>
				<a href="./records.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	
	<jsp:include page="footer.jsp" />
	
</body>
</html>
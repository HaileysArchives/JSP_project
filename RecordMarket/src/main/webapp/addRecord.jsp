<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> -->

<meta charset="UTF-8">
<title>음반 등록</title>
</head>
<body>
	<%@ include file="menu.jsp" %>
	<body style="background-color: black;
	@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
	font-family: 'Anton', sans-serif;">
	
	<div class="jumbotron text-black" style="background-color:hotpink; 
	@import url('https://fonts.googleapis.com/css2?family=Anton&display=swap'); 
	font-family: 'Anton', sans-serif;">
		<div class="container">
			<h1 style="font-size:70px;";>Record Registration</h1>
		</div>
	</div>
	
	<div class="container text-white">
		<form name="newRecord" action="./processAddRecord.jsp"
			class="form-horizontal" method="post" enctype="multipar/form-date">
		<!-- <form name="newRecord" action="./addRecord.jsp" class="form-horizontal" method="post"> -->
		<!-- 입력 양식에 입력된 데이터를 서버로 전송하여 폼 데이터를 처리하도록 form 태그의 action 속성 값, 메소드 방식을 작성 -->
			<div class="form-group row">
				<label class="col-sm-2">음반 코드</label>
				<div class="col-sm-3">
					<input type="text" name="recordId" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">음반명</label>
				<div class="col-sm-3">
					<input type="text" name="name" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">가격</label>
				<div class="col-sm-3">
					<input type="text" name="unitPrice" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">상세 정보</label>
				<div class="col-sm-5">
					<textarea name="description" cols="70" rows="4" class="form-control"></textarea>
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">제작사</label>
				<div class="col-sm-3">
					<input type="text" name="production" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">레이블</label>
				<div class="col-sm-3">
					<input type="text" name="recordLabel" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">재고 수</label>
				<div class="col-sm-3">
					<input type="text" name="unitsInStock" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">제조국</label>
				<div class="col-sm-3">
					<input type="text" name="countryOfManu" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">출시일</label>
				<div class="col-sm-3">
					<input type="text" name="releaseDate" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<label class="col-sm-2">상태</label>
				<div class="col-sm-5">
					<input type="radio" name="condition" value="New">
					신규 제품
					<input type="radio" name="condition" value="Old">
					중고 제품
				</div>
			</div>
			
			<div class="form-group row">
			<label class="col-sm-2">이미지</label>
				<div class="col-sm-5">
					<input type="file" name="recordImage" class="form-control">
				</div>
			</div>
	
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10">
					<input type="submit" class="btn btn-outline-light" value="등록">
					<!-- 입력된 데이터를 서버로 전송하도록 input 태그의 type 속성 값을 submit로 작성 -->
				</div>
			</div>
			
		</form>
	</div>
</body>
</html>
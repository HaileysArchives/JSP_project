<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="java.util.*" %>
<%@ page import="DTO.Record" %>
<%@ page import="DAO.RecordRepository" %>

<%
	request.setCharacterEncoding("UTF-8"); 
	// 폼 페이지에서 입력된 데이터를 서버로 전송할 때 한글이 깨지지 않도록 문자 인코딩 유형을 request 내장 객체의 setCharacterEncoding() 메소드 생성 
	
	String filename = "";
	String realFolder = "C:\\upload"; // 웹 어플리케이션의 절대 경로
	String encType = "utf-8"; 
	int maxSize = 5 * 850 * 850; // 최대 업로드될 파일의 크기 
	
	DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();

	MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, policy);
	
	String recordId = request.getParameter("recordId");
	String name = request.getParameter("name");
	String unitPrice = request.getParameter("unitPrice"); // String? Integer?
	String artist = request.getParameter("artist");
	String description = request.getParameter("description");
	String production = request.getParameter("production");
	String recordLabel = request.getParameter("recordLabel");
	String unitsInStock = request.getParameter("unitsInStock");
	String countryOfManu = request.getParameter("countryOfManu");
	String releaseDate = request.getParameter("releaseDate");
	String condition = request.getParameter("condition");
	// 입력된 데이터를 얻어오도록 요청 파라미터 이름으로 request 내장 객체의 getParameter() 메소드 생성
	
	Integer price; // 상품 가격이 입력되지 않은 경우 0으로, 입력된 경우 정수형으로 변경
	
	if (unitPrice.isEmpty()) 
		price = 0;
	else 
		price = Integer.valueOf(unitPrice);
	
	long stock;
	
	if (unitsInStock.isEmpty())
		stock = 0;
	else 
		stock = Long.valueOf(unitsInStock);
	
	Enumeration<?> files = multi.getFileNames();
	String fname = (String) files.nextElement();
	String fileName = multi.getFilesystemName(fname);
	
	RecordRepository dao = RecordRepository.getInstance(); 
	
	Record newRecord = new Record();
	newRecord.setRecordId(recordId);
	newRecord.setName(name);
	newRecord.setUnitPrice(price);
	newRecord.setArtist(artist);
	newRecord.setDescription(description);
	newRecord.setProduction(production);
	newRecord.setRecordLabel(recordLabel);
	newRecord.setUnitsInStock(stock);
	newRecord.setCountryOfManu(countryOfManu);
	newRecord.setReleaseDate(releaseDate);
	newRecord.setCondition(condition);
	newRecord.setFilename(filename);
	
	dao.addRecord(newRecord); // 입력된 데이터를 저장하도록 RecordRepository 클래스의 addRecord() 메소드 호출
	
	response.sendRedirect("records.jap"); // 페이지 강제 이동	
%>

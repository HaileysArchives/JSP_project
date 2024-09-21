// 자바빈즈로 사용할 클래스 만들기  
package DAO; 

import java.util.ArrayList; 
import DTO.Record;

public class RecordRepository { // 멤버 변수와 기본 생성자 만들기 
	private ArrayList<Record> listOfRecords = new ArrayList<Record>();
	// 신규 상품 데이터를 저장하는 메소드 생성
	private static RecordRepository instance = new RecordRepository();
	
	public static RecordRepository getInstance() { 
		return instance;
	} // 객체 변수 instance에 대한 Getter() 메소드 생성
	
	public void addRecord(Record record) {
		listOfRecords.add(record);
	} // 객체 변수 listOfRecords에 새로운 상품 정보를 등록하는 addRecord() 메소드 생성

	public RecordRepository() { // 상품 목록을 저장하기 위해 listOfRecord 변수 생성
		Record R1 = new Record("2526675", "Taylor Swift (테일러 스위프트)7집 Lover [핑크 & 블루 컬러 2LP]", 55000);
		R1.setArtist("Taylor Swift"); // 아티스트
		R1.setDescription("미국을 대표하는 여성 팝 싱어송라이터 Taylor Swift의 일곱 번째 정규 앨범 Lover [Gatefold][Colored 2LP]!"
				+ "Republic Records에서 처음 발매된 이번 앨범은 프류듀서 Jack Antonoff와 함께 앨범 [1989]부터 이어온 Taylor Swift 표 일렉트로닉 팝, Synth 팝 사운드를 완성하는 모습을 보여주고 있다."); // 음반소개 
		R1.setProduction("UNIVERSAL"); // 제작사
		R1.setRecordLabel("REPUBLIC RECORDS"); // 레이블
		R1.setUnitsInStock(1); // 재고 수
		R1.setCountryOfManu("EU"); // 제조국
		R1.setReleaseDate("2019년 11월 22일"); // 출시일
		R1.setCondition("신규 음반"); // 상태
		R1.setFilename("lover.png"); // 이미지 파일 이름
		
		Record R2 = new Record("2545048", "Coldplay (콜드플레이) - 9집 Music of the Spheres [리사이클 컬러 LP]", 58200);
		R2.setArtist("Coldplay"); // 아티스트
		R2.setDescription("21세기를 대표하는 밴드 Coldplay의 2년 만의 새 앨범 [Music Of The Spheres]\r\n"
				+ "2019년에 발표한 'Everyday Life' 앨범 이후 약 2년 만에 선보이는 앨범으로 Coldplay 그들만의 세계관이 그려진 작품이다."
				+ "그리고 BTS와 함께하여 90여개국에서 아이튠즈 정상를 차지한 'My Universe' 등 총 12곡이 수록되어 있다."); // 음반소개 
		R2.setProduction("WARNER MUSIC"); // 제작사
		R2.setRecordLabel("PARLOPHONE"); // 레이블
		R2.setUnitsInStock(12); // 재고 수
		R2.setCountryOfManu("EU"); // 제조국
		R2.setReleaseDate("2021년 10월 19일"); // 출시일
		R2.setCondition("신규 음반"); // 상태
		R2.setFilename("coldplay.png"); // 이미지 파일 이름
		
		Record R3 = new Record("2527519", "Harry Styles (해리 스타일스) - 2집 Fine Line [블랙 & 화이트 컬러 2LP]", 43200);
		R3.setArtist("Harry Styles"); // 아티스트
		R3.setDescription("One Direction (원 디렉션)'의 맴버이자, 떠오르는 팝 아이콘 싱어송라이터 '해리 스타일스(Harry Styles)'의 두번째 앨범 [Fine Line] Limited Vinyl Edition.\r\n"
				+ "Tyler Johnson 와 Kid Harpoon와 함께 작곡 및 프로듀싱에 참여한 선공개된 싱글인 'Lights Up'을 비롯하여 두 번째 싱글 'Watermelon Sugar'등 총 12곡이 수록되어 있다."); // 음반소개 
		R3.setProduction("SONY MUSIC"); // 제작사
		R3.setRecordLabel("COLUMBIA"); // 레이블
		R3.setUnitsInStock(21); // 재고 수
		R3.setCountryOfManu("EU"); // 제조국
		R3.setReleaseDate("2019년 12월 17일"); // 출시일
		R3.setCondition("신규 음반"); // 상태
		R3.setFilename("harry styles.png"); // 이미지 파일 이름
		
		Record R4 = new Record("2453816", "Michael Jackson (마이클 잭슨) - Xscape [LP]", 79500);
		R4.setArtist("Michael Jackson"); // 아티스트
		R4.setDescription("“팝의 황제” 마이클 잭슨! 기다리던 마이클 잭슨의 새로운 음악! XSCAPE 에픽 레코드의 수장 \"엘 에이 리드\" (L.A. Reid)와 최고의 프로듀서들이 의기투합해 \"현대화\"한 마이클 잭슨의 신곡들! 음원 공개 후 "
				+ "팬들에게 폭발적인 지지를 얻고 있는 ‘Slave To The Rhythm’ , ‘Love Never Felt So Good’ , ‘Xscape’등이 수록된 스탠다드 앨범."); // 음반소개 
		R4.setProduction("SONY MUSIC"); // 제작사
		R4.setRecordLabel("MJJ PRODUCTIONS"); // 레이블
		R4.setUnitsInStock(3); // 재고 수
		R4.setCountryOfManu("미국"); // 제조국
		R4.setReleaseDate("2014년 06월 24일"); // 출시일
		R4.setCondition("중고 음반"); // 상태
		R4.setFilename("Michael Jackson.png"); // 이미지 파일 이름
		
		Record R5 = new Record("2453802", "Sam Smith (샘 스미스) - 1집 In The Lonely Hour [LP]", 55000);
		R5.setArtist("Sam Smith"); // 아티스트
		R5.setDescription("1992년 생이라는 어린 나이가 믿기지 않는 작곡 능력, 성숙한 소울 창법으로 2014 Brit 어워드 비평가 선정 부문을 수상하는 한편 BBC Sound of 2014 투표에서도 당당히 1위를 차지하며 현재 영국 음악 시장에서 가장 핫한 뮤지션으로 떠오르는 Sam Smith의 데뷔 앨범 [In the Lonely Hour]!"); // 음반소개 
		R5.setProduction("UNIVERSAL MUSIC"); // 제작사
		R5.setRecordLabel("CAPITOL"); // 레이블
		R5.setUnitsInStock(0); // 재고 수
		R5.setCountryOfManu("EU"); // 제조국
		R5.setReleaseDate("2014년 06월 24일"); // 출시일
		R5.setCondition("중고 음반"); // 상태
		R5.setFilename("SamSmith.png"); // 이미지 파일 이름
		
		Record R6 = new Record("2504661", "Billie Eilish (빌리 아일리쉬) - Don't Smile At Me [LP]", 47500);
		R6.setArtist("BILLIE EILISH"); // 아티스트
		R6.setDescription("BBC Sound of 2018에 이름을 올렸으며 최 힙스터들에게 인기를 얻고 있는 아메리칸 여성 싱어송라이터 Billie Eilish의 첫 EP앨범 Don't Smile At Me [LP]!\r\n"
				+ "지난 2016년 SoundCloud에 올렸던 싱글 'Ocean Eyes'로 인기를 얻기 시작, 곧바로 Interscope Records와 계약하면서 본격적인 팝가수로 데뷔하게 되었다."); // 음반소개 
		R6.setProduction("UNIVERSAL"); // 제작사
		R6.setRecordLabel("DARKROOM"); // 레이블
		R6.setUnitsInStock(8); // 재고 수
		R6.setCountryOfManu("미국"); // 제조국
		R6.setReleaseDate("2017년 12월 15일"); // 출시일
		R6.setCondition("신규 음반"); // 상태
		R6.setFilename("Billie.png"); // 이미지 파일 이름
		
		listOfRecords.add(R1);
		listOfRecords.add(R2);
		listOfRecords.add(R3);
		listOfRecords.add(R4);
		listOfRecords.add(R5);
		listOfRecords.add(R6);
	} 
	
	public ArrayList<Record> getAllRecords() {
		return listOfRecords;
	} // 객체 타입의 변수 listOfLP에 저장된 모든 상품 목록을 가져오는 getAllLP() 메소드 작성

	public Record getRecordById(String recordId) {
		Record recordById = null;
		
		for (int i = 0; i < listOfRecords.size(); i++) {
			Record record = listOfRecords.get(i);
			if (record != null && record.getRecordId() != null && record.getRecordId().equals(recordId)) {
				recordById = record;
				break;
			}
		}
		return recordById;
	} // 객체 변수 listOfRecords에 저장된 모든 상품 목록에서 상품 아이디와 일치하는 상품을 가져오는 getRecordById() 메소드 작성
	
}
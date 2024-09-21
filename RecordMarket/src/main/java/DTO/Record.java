package DTO; // (Data Transfer Object)

/*DTO는 데이터를 저장하거나 계층 사이에서 데이터를 교환(전송)할때 사용되는 객체로, 순수하게 데이터만을 담고 있다. 이 DTO는 자바빈즈 규약에 따라 작성된다. 
(자바빈즈는 자바로 작성된 소프트웨어 컴포넌트로, 자바빈즈 규약을 따르는 자바 클래스를 말한다. DTO 또한 자바빈즈 규약에 따라 작성되는 클래스 이므로 자바빈즈라 할 수 있다)*/

/*JSP 페이지가 가지는 기능 중 가장 중요한 게 데이터를 표시하는 건데 보통 하나의 JSP 페이지 안에 데이터를 보여주기 위한 코드와 단순히 화면 출력하기 위해 HTML 코드가 혼재하여 
나타내다보니, 코드를 재사용하거나 기능적인 확장을 위해서 화면을 출력하는 부분과 데이터를 처리하는 로직 부분을 따로 나눠서 처리한다*/

/*보통 로직 부분의 코드에 자바 빈즈라는 클래스를 이용해서 데이터와 관련되어 있는 동적 화면에 표시하기 위한 계산식, 자료처리를 담당하는 자바 코드를 따로 분리해서 작성할 수 잇는데 
이를 '자바 빈즈'라 한다*/

/*이 자바빈즈는 데이터를 담는 멤버 변수인 프로퍼티와 데이터를 가져오거나 저장하는 메소드로 구성된다. 그래서 자바빈즈를 작성할 땐 DTO(데이터 전송객체)를 작성할 때처럼 
자바빈즈 규칙을 따르기에 기본 패킷 이외의 패킷이 포함되어야 하는 것이고, GETTER/SETTER가 필요하고 그다음에 멤버변수의 접근자는 'private'으로 접근되어야 하고 
변수가 없는 기본 생성자가 필요하고 그리고 자바클래스가 Serializable Interface를 구현해야한다라는 규칙에 따라서 만들면 된다. */

import java.io.Serializable; // 이게 있어야 serialVersionUID가 작동 가능하다. 
// Eclipse 3.1부터는 serialVersionUID가 java.io.Serializable을 구현한 클래스에 선언되어있지 않으면 에러를 내보낼 수 있게 되었다.

public class Record implements Serializable {

	// serialVersionUID를 실행시키기 위해서는 Preference-Potential programming problems에서 serialVersionUID가 'Warning'에 체크되어 있어야 한다. 
	private static final long serialVersionUID = -8128359873602779868L;
	
	/* 멤버 변수 선언 (멤버 변수란 클래스 내에 선언되는 변수를 뜻한다. private 수준의 변수에 접근할 때는 클래스 내에서 this.를
	이용하여 접근하고, public 수준의 변수에 접근할 때는 클래스 밖에서도 '클래스이름.변수명'을 통하여 접근이 가능하다) */
	
	private String recordId; 		// 음반코드
	private String name;			// 음반명
	private Integer unitPrice;		// 가격
	private String artist;			// 아티스트
	private String description;		// 음반소개 
	private String production;		// 제작사
	private String recordLabel;		// 레이블
	private long unitsInStock;		// 재고 수
	private String countryOfManu;	// 제조국 
	private String releaseDate;		// 출시일(월/년)
	private String condition; 		// 신규 음반 or 중고 음반
	private String filename;		// 이미지 파일명

	public Record() { // 기본 생성자 = 매개변수가 없고, 아무런 작없 없이 단순 리턴하는 생성자
		super();
	}
	
	public Record(String recordId, String name, Integer unitPrice) {
		this.recordId = recordId;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public String getRecordId() {
		return recordId;
	}

	public void setRecordId(String recordId) {
		this.recordId = recordId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getUnitPrice() {
		return unitPrice;
	}

	public void setUnitPrice(Integer unitPrice) {
		this.unitPrice = unitPrice;
	}

	public String getArtist() {
		return artist;
	}

	public void setArtist(String artist) {
		this.artist = artist;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getProduction() {
		return production;
	}

	public void setProduction(String production) {
		this.production = production;
	}

	public String getRecordLabel() {
		return recordLabel;
	}

	public void setRecordLabel(String recordLabel) {
		this.recordLabel = recordLabel;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public String getCountryOfManu() {
		return countryOfManu;
	}

	public void setCountryOfManu(String countryOfManu) {
		this.countryOfManu = countryOfManu;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public String getCondition() {
		return condition;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}
}

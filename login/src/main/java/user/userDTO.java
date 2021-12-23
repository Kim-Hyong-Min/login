package user;

import java.sql.Timestamp;

public class userDTO {

	// DTO(Data Transfer Object) = Bean = VO(read only) = Entity Object = POJO
	
	// 캡슐화
	private int code;
	private String id, pw, name, year, month, day, gender, email, phone;
	private Timestamp regDate;
	
	public String getMonth() {
		return month;
	}

	public String getName() {
		return name;
	}

	public String getYear() {
		return year;
	}

	public String getDay() {
		return day;
	}

	public String getGender() {
		return gender;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public int getCode() {
		return code;
	}

	public String getId() {
		return id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public Timestamp getRegDate() {
		return regDate;
	}

	public userDTO(String id, String pw, String name, String year, String month, String day, String gender, String email, String phone) {
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
	}
	
	public userDTO(int code, String id, String pw, String name, String year, String month, String day, String gender, String email, String phone, Timestamp regDate) {
		this.code = code;
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.year = year;
		this.month = month;
		this.day = day;
		this.gender = gender;
		this.email = email;
		this.phone = phone;
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return String.format("%d) id:%s/pw:%s/name:%s/birth:%s.%s.%s/gender:%s/email:%s/phone:%s (%s)", this.code, this.id, this.pw, this.name, this.year, this.month, this.day, this.gender, this.email, this.phone, this.regDate);
	}
}

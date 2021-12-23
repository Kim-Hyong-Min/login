package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

public class userDAO {
	
	// Data Access Object
	// ㄴ 데이터베이스에 대한 접근 처리

	// 1. 싱글톤 패턴으로 만들기
	private userDAO() {}
	private static userDAO instance = new userDAO();
	public static userDAO getInstance() {
		return instance;
	}
	
	// 2. 데이터 베이스 연동 준비
	private Connection conn = null;			// DB에 연결을 함
	private PreparedStatement pstmt = null; // sql쿼리를 execute해줌
	private ResultSet rs = null;			// 쿼리실행 결과물을 받는 역활
	
	private ArrayList<userDTO> users = null;
	
	public Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/loginServer?serverTimezone=UTC";
			String user = "root";
			String password = "root";
			conn = DriverManager.getConnection(url, user, password);
			
			if(conn != null) {
				System.out.println("DB연동 성공!");				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return conn;
	}
	
	// 4. 연동된 DB에서 데이터 불러오기
	
	public ArrayList<userDTO> getUsers(){
		users = new ArrayList<userDTO>();
		
		try {
			conn = getConnection(); 			// DB연동하기
			String sql = "select* from users";
			pstmt = conn.prepareStatement(sql); // 연동된 DB에 쿼리를 날릴 준비
			rs = pstmt.executeQuery();			// 쿼리를 날리면서 ResultSet을 반환 받음
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String id = rs.getString(2);
				String pw = rs.getString(3);
				String name = rs.getString(4);
				String year = rs.getString(5);
				String month = rs.getString(6);
				String day = rs.getString(7);
				String gender = rs.getString(8);
				String email = rs.getString(9);
				String phone = rs.getString(10);
				Timestamp regDate = rs.getTimestamp(11);
				
				userDTO user = new userDTO(code, id, pw, name, year, month, day, gender, email, phone, regDate);
				users.add(user);
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return users;
	}
	
	// 5. CRUD
	// ㄴ Create Read Update Delete
	public void addUser(userDTO user) {
		try {
			conn = getConnection();
			String sql = "insert into users(id, pw, name, year, month, day, gender, email, phone, regDate) values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"; // ? = sql의 포멧
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, user.getId());
			pstmt.setString(2, user.getPw());
			pstmt.setString(3, user.getName());
			pstmt.setString(4, user.getYear());
			pstmt.setString(5, user.getMonth());
			pstmt.setString(6, user.getDay());
			pstmt.setString(7, user.getGender());
			pstmt.setString(8, user.getEmail());
			pstmt.setString(9, user.getPhone());
			pstmt.setTimestamp(10, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
			
			System.out.println("회원가입 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public boolean checkUser(String id) {
		ArrayList<userDTO> users = getUsers();
		int check = -1;
		for(int i=0; i<users.size(); i++) {
			if(id.equals(users.get(i).getId())) {
				check = i;
			}
		}
		if(check == -1) {
			return true;
		}
		else {			
			return false;
		}
		
	}
	
	public boolean loginUser(String id, String pw) {
		ArrayList<userDTO> users = getUsers();
		int check = -1;
		for(int i=0; i<users.size(); i++) {
			if(id.equals(users.get(i).getId()) && pw.equals(users.get(i).getPw())) {
				check = i;
			}
		}
		if(check != -1) {
			return true;
		}
		else {			
			return false;
		}
	}
	
}

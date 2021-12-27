package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Calendar;

import util.DBManager;

public class BoardDAO {
	
	private BoardDAO() {}
	private static BoardDAO instance = new BoardDAO();
	public static BoardDAO getInstance() {
		return instance;
	}
	
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	
	private ArrayList<BoardDTO> boards = null;
	
	
	public ArrayList<BoardDTO> getBoard(){
		boards = new ArrayList<BoardDTO>();
		
		try {
			conn = DBManager.getConnection();
			String sql = "select* from board";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int code = rs.getInt(1);
				String title = rs.getString(2);
				String content = rs.getString(3);
				String id = rs.getString(4);
				String password = rs.getString(5);
				int view = rs.getInt(6);
				int like = rs.getInt(7);
				Timestamp date = rs.getTimestamp(8);
				
				BoardDTO board = new BoardDTO(code, title, content, id, password, view, like, date);
				boards.add(board);
			}
			
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return boards;
	}
	
	
	public void addBoard(BoardDTO board) {
		try {
			conn = DBManager.getConnection();
			String sql = "insert into board(title, content, id, password, date) value (?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getId());
			pstmt.setString(4, board.getPassword());
			pstmt.setTimestamp(5, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			
			pstmt.executeUpdate();
			
			System.out.println("보드 작성 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void updateBoard(BoardDTO board, int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE board SET title = ?, content = ?, password = ?, date = ? WHERE code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, board.getTitle());
			pstmt.setString(2, board.getContent());
			pstmt.setString(3, board.getPassword());
			pstmt.setTimestamp(4, new Timestamp(Calendar.getInstance().getTimeInMillis()));
			pstmt.setInt(5, code);
			
			pstmt.executeUpdate();
			
			System.out.println("보드 수정 성공!");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void viewBoard(BoardDTO board) {
		try {
			conn = DBManager.getConnection();
			String sql = "update board set view = view + 1 where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, board.getCode());
			
			pstmt.executeUpdate();
			
			System.out.println("조회수 증가");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void likeBoard(BoardDTO board) {
		try {
			conn = DBManager.getConnection();
			String sql = "UPDATE board SET `like` = `like` + 1 WHERE code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1,  board.getCode());
			
			pstmt.executeUpdate();
			
			System.out.println("좋아요 증가");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public void deleteBoard(int code) {
		try {
			conn = DBManager.getConnection();
			String sql = "delete from board where code = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, code);
			
			pstmt.executeUpdate();
			
			System.out.println("삭제 완료");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	
}

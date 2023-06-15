package DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import DTO.Epilogue;

public class EpilogueDAO {
	final String JDBC_DRIVER = "oracle.jdbc.driver.OracleDriver";
	final String JDBC_URL = "jdbc:oracle:thin:@localhost:1521:xe";
	
	public Connection open() {
		Connection conn = null;
		
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "test", "test1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//후기 리스트 가져오기
	public ArrayList<Epilogue> getList() throws Exception {
		Connection conn = open();
		
		ArrayList<Epilogue> epiList = new ArrayList<>();
					  
		String sql = "select board_no, title, to_char(hiking_date, 'yyyy.mm.dd') hiking_date, user_name, views from epilogue";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		try(conn; pstmt; rs){
			while(rs.next()) {
				Epilogue e = new Epilogue();
				
				e.setBoard_no(rs.getInt("board_no"));
				e.setTitle(rs.getString("title"));
				e.setHiking_date(rs.getString("hiking_date"));
				e.setUser_name(rs.getString("user_name"));
				e.setViews(rs.getInt("views"));
				
				epiList.add(e);
			}
		}	
			return epiList;		
		}
		
	//후기 내용 가져오기
	public Epilogue getView(int board_no) throws Exception {
		Connection conn = open();
		Epilogue e = new Epilogue();
						
		String sql = "SELECT BOARD_NO, TITLE, USER_NAME, TO_CHAR(HIKING_DATE, 'YYYY.MM.DD') HIKING_DATE, VIEWS, CONTENT, IMG FROM EPILOGUE WHERE BOARD_NO = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, board_no);
		ResultSet rs = pstmt.executeQuery();
		
		try(conn; pstmt; rs){
			while(rs.next()) {
				e.setBoard_no(rs.getInt("board_no"));
				e.setTitle(rs.getString("title"));
				e.setUser_name(rs.getString("user_name"));
				e.setHiking_date(rs.getString("hiking_date"));
				e.setViews(rs.getInt("views"));
				e.setContent(rs.getString("content"));
				e.setImg(rs.getString("img"));
			}
			return e;
		}		
	}
	
	//조회수 증가
		public void updateViews(int board_no) throws Exception {
			Connection conn = open();
			String sql = "update EPILOGUE set views = (views + 1) where board_no = ?";
			PreparedStatement pstmt = conn.prepareStatement(sql); 
			
			try(conn; pstmt){
				pstmt.setInt(1, board_no);				
				pstmt.executeUpdate();
			}
		}
	
	//후기 등록
	public void insertEpilogue(Epilogue e) throws Exception {
		Connection conn = open();
		String sql = "INSERT INTO EPILOGUE(BOARD_NO, TITLE, USER_NAME, CONTENT, IMG, VIEWS, HIKING_DATE) VALUES(EPILOGUE_SEQ.NEXTVAL, ?, ?, ?, ?, 0, ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt){
			pstmt.setString(1, e.getTitle());
			pstmt.setString(2, e.getUser_name());
			pstmt.setString(3, e.getContent());
			pstmt.setString(4, e.getImg());
			pstmt.setString(5, e.getHiking_date());
			
			pstmt.executeUpdate();
		}		
	}	
	
	//후기 수정화면 보여주기
	public Epilogue getViewForEdit(int board_no) throws Exception {
		Connection conn = open();
		Epilogue e = new Epilogue();
		
		String sql = "select board_no, title, user_name, to_char(hiking_date, 'yyyy.mm.dd') hiking_date, views, content, img from EPILOGUE where board_no = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setInt(1, board_no);
		ResultSet rs = pstmt.executeQuery();
				
		try(conn; pstmt; rs){
			while(rs.next()) {
				e.setBoard_no(rs.getInt("board_no"));
				e.setTitle(rs.getString("title"));
				e.setUser_name(rs.getString("user_name"));
				e.setHiking_date(rs.getString("hiking_date"));
				e.setViews(rs.getInt("views"));
				e.setContent(rs.getString("content"));
				e.setImg(rs.getString("img"));				
			}
			return e;
		}
	}
	
	//후기 수정하기
	public void updateEpilogue(Epilogue e) throws Exception {
		Connection conn = open();
		String sql = "update EPILOGUE set title =?, user_name=?, content=?, img=? where board_no =?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt){
			pstmt.setString(1, e.getTitle());
			pstmt.setString(2, e.getUser_name());
			pstmt.setString(3, e.getContent());
			pstmt.setString(4, e.getImg());
			pstmt.setInt(5, e.getBoard_no());
			
			if(pstmt.executeUpdate() != 1) {  
				 throw new Exception("수정된 글이 없습니다.");
			}			
		}
	}
	
	//후기 삭제
	public void deleteEpilogue(int board_no) throws Exception {
		Connection conn = open();
		String sql = "delete from EPILOGUE where board_no = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt){
			pstmt.setInt(1, board_no);
			
			if(pstmt.executeUpdate() != 1) {
				throw new Exception("삭제된 글이 없습니다.");
			}
		}		
	}
}

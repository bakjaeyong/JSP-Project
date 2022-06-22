package cs.dit.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import cs.dit.dto.BoardDTO;

public class BoardDAO {
	private DataSource ds;
	private Connection con;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public BoardDAO() {
		try {			
			Context initContext = new InitialContext();
			Context envContext = (Context) initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/jjson");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	// Connection 해제를 위한 메소드
	public void close() {
		try {
			if(con != null) {
				con.close();
				con = null;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<BoardDTO> list() {
		String sql = "SELECT * FROM BOARD";
		System.out.println("dao");
		
		ArrayList<BoardDTO> dtos = new ArrayList<BoardDTO>();
		try {
			con = ds.getConnection();
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setTitle(rs.getString("title"));
				dto.setName(rs.getString("name"));
				dto.setContent(rs.getString("content"));
				dtos.add(dto);
			}
			rs.close(); pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return dtos;
	}
}

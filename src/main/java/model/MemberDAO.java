package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDAO {
//	String id = "GIS";
//	String pass = "1234";
//	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;

//	public void getCon() {
//		try {
//			Class.forName("oracle.jdbc.driver.OracleDriver");
//			System.out.println("데이터베이스 연결중...");
//
//			con = DriverManager.getConnection(url, id, pass);
//			System.out.println("데이터베이스 연결성공");
//		} catch (Exception e) {
//			e.printStackTrace();
//		}
//	}
	
	public void getCon() {
		
		try {
		
		Context initctx = new InitialContext();
		
		Context envctx = (Context) initctx.lookup("java:comp/env");
		
		DataSource ds = (DataSource) envctx.lookup("jdbc/pool_test");
		
		con = ds.getConnection();
		} catch (Exception e) {
			e.printStackTrace(); 
			} 
		}

	public void insertMember(MemberBean mbean) {

		try {
			getCon();
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(sql);

			pstmt.setString(1, mbean.getId());
			pstmt.setString(2, mbean.getPass1());
			pstmt.setString(3, mbean.getEmail());
			pstmt.setString(4, mbean.getTel());
			pstmt.setString(5, mbean.getHobby());
			pstmt.setString(6, mbean.getJob());
			pstmt.setString(7, mbean.getAge());
			pstmt.setString(8, mbean.getInfo());

			pstmt.executeUpdate();
			System.out.println("레코드추가성공");

			con.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

	public Vector<MemberBean> allSelectMember() {
		Vector<MemberBean> v = new Vector<>();
		try {
			getCon();
			String sql = "select * from member";

			pstmt = con.prepareStatement(sql);

			rs = pstmt.executeQuery();

			while (rs.next()) {

				MemberBean bean = new MemberBean();
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));

				v.add(bean);
			}

			con.close();
			pstmt.close();
		} catch (Exception e) {

		}

		return v;
	}

	public MemberBean oneSelectMember(String id) {

		MemberBean bean = new MemberBean();
		try {

			getCon();

			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);

			pstmt.setString(1, id);

			rs = pstmt.executeQuery();
			if (rs.next()) {
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setEmail(rs.getString(3));
				bean.setTel(rs.getString(4));
				bean.setHobby(rs.getString(5));
				bean.setJob(rs.getString(6));
				bean.setAge(rs.getString(7));
				bean.setInfo(rs.getString(8));
			}

			con.close();
			pstmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		return bean;
	}

	public String getPass(String id) {
		
		String pass = "";
		try {
		getCon(); 
		
		String sql = "select pass1 from member where id=?";
		pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1,id);
	
		rs = pstmt.executeQuery();
		if(rs.next()) {
		pass = rs.getString(1);
	}
		con.close();
		pstmt.close();
	} catch (Exception e) { 
		e.printStackTrace(); 
		
	}
	return pass; 
	}
	
	public void updateMember(MemberBean bean) {
		getCon();
		try {
		
		String sql = "update member set email=?,tel=? where id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, bean.getEmail());
		pstmt.setString(2,bean.getTel());
		pstmt.setString(3,bean.getId());
		pstmt.executeUpdate();
		
		con.close();
		pstmt.close();
		} catch (Exception e) { e.printStackTrace(); } }
	
	public void deleteMember(String id) {
		getCon();
		try {
	
		String sql = "delete from member where id=?";
		
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.executeUpdate();
		
		con.close();
		pstmt.close();
		} catch (Exception e) {
			e.printStackTrace(); 
			} 
		}
	
}

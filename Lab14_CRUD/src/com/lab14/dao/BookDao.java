package com.lab14.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.lab14.bean.BookVO;
import com.lab14.common.JDBCUtil;

public class BookDao {
	 Connection conn = null;
	 PreparedStatement ps = null;
	 ResultSet rs = null;
	
	private final  String book_insert = "insert into Books (title, writer, content) values (?,?,?)";
	private final  String book_update = "update Books set title=?, writer=?, content=? where seq=?";
	private final  String book_delete = "delete from Books where seq=?";
	private final String get_book = "select * from Books where seq=?";
	private final  String get_booklist = "select * from Books order by regdate desc";
	
	public int save(BookVO b) {
		int status = 0;
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(book_insert);
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getWriter());
			ps.setString(3, b.getContent());
			status = ps.executeUpdate();
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public int update(BookVO b) {
		int status = 0;
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(book_update);
			ps.setString(1, b.getTitle());
			ps.setString(2, b.getWriter());
			ps.setString(3, b.getContent());
			ps.setInt(4, b.getSeq());
			status = ps.executeUpdate();
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public int delete(int seq) {
		int status = 0;
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(book_delete);
			ps.setInt(1, seq);
			status = ps.executeUpdate();
		} catch(Exception e) {
			System.out.println(e);
		}
		return status;
	}
	
	public  BookVO getBook(int seq) {
		BookVO book = new BookVO();
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(get_book);
			ps.setInt(1, seq);
			rs = ps.executeQuery();
			while(rs.next()) {
				book.setSeq(rs.getInt("seq"));
				book.setTitle(rs.getString("title"));
				book.setWriter(rs.getString("writer"));
				book.setContent(rs.getString("content"));
				book.setRegdate(rs.getDate("regdate"));
				book.setCnt(rs.getInt("cnt"));
			}
			rs.close();
		} catch(Exception e) {
			System.out.println(e);
		}
		return book;
	}
	
	public List<BookVO> getBookList() {
		List<BookVO> list = new ArrayList<BookVO>();
		try {
			conn = JDBCUtil.getConnection();
			ps = conn.prepareStatement(get_booklist);
			rs = ps.executeQuery();
			while(rs.next()) {
				BookVO one = new BookVO();
				one.setSeq(rs.getInt("seq"));
				one.setTitle(rs.getString("title"));
				one.setWriter(rs.getString("writer"));
				one.setContent(rs.getString("content"));
				one.setRegdate(rs.getDate("regdate"));
				one.setCnt(rs.getInt("cnt"));
				list.add(one);
			}
			rs.close();
		} catch(Exception e) {
			System.out.println(e);
		}
		return list;
	}
}

package com.lab15.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
	public static Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://db4free.net:3306/db_jeonghyun", "paul5404",
					"hs4875631##*");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
			System.out.println("DB 연결정보 오류!");
		}
		return conn;
	}

//	public static void main(String args[]) {
//		Connection con = JDBCUtil.getConnection();
//		if (con == null) {
//			System.out.println("DB 연결 실패!");
//		} else {
//			System.out.println("DB 연결 성공!");
//		}
//	}
}

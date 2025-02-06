package com.kepg.ex;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLTest {
    public static void main(String[] args) {
        String url = "jdbc:mysql://localhost:3306/ys_database?serverTimezone=UTC";
        String id = "root";
        String password = "rnjs7944"; // MySQL 설치 시 설정한 비밀번호

        try {
            // MySQL JDBC 드라이버 로드
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url, id, password);
            System.out.println("✅ MySQL 연결 성공!");
            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("❌ 드라이버 로드 실패!");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ MySQL 연결 실패!");
            e.printStackTrace();
        }
    }
}
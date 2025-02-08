package com.kepg.database.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");

		PrintWriter out = response.getWriter();
		
		// database 서버 접속
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			// 접속 주소, 포트, 사용할 데이터 베이스
			String url = "jdbc:mysql://localhost:3306/ys_database";
			// 사용자 이름, 비밀번호
			String id = "root";
			String password = "rnjs7944";
			
			Connection connection = DriverManager.getConnection(url,id,password);
			
			// 쿼리 작성
			String query = "SELECT * FROM `company`";
			
			// 쿼리 수행
			Statement statement = connection.createStatement();
			
			ResultSet resultSet = statement.executeQuery(query);
			
			while(resultSet.next()) {
				String name = resultSet.getString("name"); // database에 저장되어있는 형식에 맞춰 getmethod 사용
				int headcount = resultSet.getInt("headcount");	
				String business = resultSet.getString("business");
			
				// 제목 :  가격 :  설명 : 
				out.println("제목 : " + name + " 가격 : " + headcount + " 설명 : " + business);
			}
			
			
			
			statement.close(); //항상 닫아 줘야함
			
			// 
//			statement = connection.createStatement();
//			
//			query = "INSERT INTO `company`\n"
//					+ "(`name`, `business`, `scale`, `headcount`)\n"
//					+ "VALUES\n"
//					+ "('권무무 컴퍼니', '펫샵', '중소기업', '5');";
//			
//			// INSERT, UPDATE, DELETE -> 수정하면 끝, 결과가 없는 것들은 executeUpdate사용
//			int count = statement.executeUpdate(query); //실행된 행의 개수
//			
//			out.println("삽입 결과 : " + count); 
//			
//			statement.close(); 
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

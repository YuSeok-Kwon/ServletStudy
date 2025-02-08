package com.kepg.database.test;

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

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/plain");
		response.setCharacterEncoding("UTF-8");
		
		PrintWriter out = response.getWriter();
		
		Connection connection = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/ys_database";
			String id = "root";
			String password = "rnjs7944";
			
			connection = DriverManager.getConnection(url, id, password);
			
			statement = connection.createStatement();
//			
//			String query = "INSERT INTO `real_estate`\n"
//					+ "(`realtorId`, `address`, `area`, `type`, `price`)\n"
//					+ "VALUES\n"
//					+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000);";
//			
//			int count = statement.executeUpdate(query);
//			out.println(count);
//			
//			statement.close();
			
			statement = connection.createStatement();
			
			String selectQuery = "SELECT * FROM `real_estate` ORDER BY id DESC LIMIT 10;";
			resultset = statement.executeQuery(selectQuery);
			
			while(resultset.next()) {
				String address = resultset.getString("address");
				int area = resultset.getInt("area");
				String type = resultset.getString("type");
				
				out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
			}
			
			statement.close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
}

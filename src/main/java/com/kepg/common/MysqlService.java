package com.kepg.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService {
	
	private Connection connection;

	// 싱글턴방식 -> 생성자가 여러 차례 호출되더라도 실제로 생성되는 객체는 하나이고, 
	//	최초 생성 이후에 호출된 생성자는 최초의 생성자가 생성한 객체를 리턴한다.(하나의 객체를 공용으로 사용한다)
	// => 객체의 무분별한 생성을 막음
	// 클래스의 구조를 정해진 규격대로 만들어 가는 것을 디자인 패턴이라고 함
	// -> 싱글턴 (디자인)패턴
	
	// static 멤버변수는 객체 생성없이 사용할 수 있는 멤버변수
	private static MysqlService mysqlservice = null;
	
	private MysqlService() { //기본 생성자를 private로 설정해서 호출 할 수 없게 함
		
	}
	
	// static메소드는 새로운 객체생성 없이 호출가능 즉 바로 getInstance();로 사용가능
	public static MysqlService getInstance() { 
		
		if(mysqlservice == null) {			// mysqlservice가 null일 때만 생성 = 최초 1번만 생성
			mysqlservice = new MysqlService();
		}
		
		return mysqlservice;
	}
	
	// 데이터베이스 접속 기능 
	public boolean connect() {
		
		// 데이터베이스 접속이 되어 있는 경우 접속 과정 진행하지 않음
		try {
			if(connection != null && !connection.isClosed()) {
				return false;
				
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			Class.forName("com.mysql.cj.jdbc.Driver");
			
			String url = "jdbc:mysql://localhost:3306/ys_database";
			String id = "root";
			String password = "rnjs7944";
			
			connection = DriverManager.getConnection(url, id, password);
		
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		return true;	
	}
	
	// 조회 커리 수행 기능
	public List<Map<String,Object>> select(String query){
		try {
			Statement statement = connection.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			// [
			// 		{"id":3,"name":네이버,"url":http://naver.com},
			//		{"id":4,"name":다음,"url":http://daum.net}
			//]
			
			List<Map<String,Object>> resultList = new ArrayList<>();
			
			while(resultSet.next()) {
				
				Map<String, Object> resultMap = new HashMap<>();
				resultMap.put(query, resultMap);
			}
			
			statement.close();
			return resultList;
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			return null;
		}
	}
	
	
	// 저장, 수정, 삭제 수행기능
	public int update(String query) {

		try {
			Statement statement = connection.createStatement();
			
			return statement.executeUpdate(query);
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return -1;
		}
	}
	
	// 데이터 베이스 접속 끊기
	public boolean disconnect() {
		try {
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
			return false;
		}
		return true;
	}
}

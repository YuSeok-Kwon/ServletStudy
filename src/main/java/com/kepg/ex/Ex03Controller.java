package com.kepg.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex03")
public class Ex03Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
//		response.setContentType("text/html")
		response.setContentType("application/json");
		
		// 이름과 생년월일을 전달 받고 html로 표현
		
		PrintWriter out = response.getWriter();
		
		// request로 부터 name이라는 이름으로 이름을 얻어다 쓸꺼니
		// 이 기능 쓰고 싶으면 name이란 이름으로 이름을 전달해!
		String name = request.getParameter("name");
		String birth = request.getParameter("birth"); // 19980919
		
		String yearString = birth.substring(0,4);
		
		int year = Integer.parseInt(yearString);
		
		int age = 2025 - year + 1;
		
		// 데이터를 리스폰스에 문자열로 담기
		// 데이터를 문자로 담는 규격이 존재
		// JSON (Javascript Object Notation)
		// ["권유석", "김성은"]
		// {"나이":26, "몸무게" : 50}
		// {"name":"권유석", "age":26}
		
		out.print(
				"{\"name\":\"" + name + "\", \"age\" : " + age + "}");
		
//		out.println(""
//				+ "<html>"
//				+		"<head><title>정보</title></head>"
//				+			"<body>"
//				+				"<h2>이름 : " + name + "</h2>"
//				+				"<h3>나이 : " + age + "</h3>"
//				+			"</body>"
//				+ "</html>");
		
		
		
	}

}

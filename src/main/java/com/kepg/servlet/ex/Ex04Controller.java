package com.kepg.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html");
	 
	 PrintWriter out = response.getWriter();
	 
	 String nameString = request.getParameter("name");
	 String birthString = request.getParameter("birth");
	 
	 int year = Integer.parseInt(birthString.substring(0, 4));
	 
	 int age = 2025 - year + 1;
	 
	 out.println(""
			 + "<html>"
			 +		"<head><title>정보</title></head>"
			 +		"<body>");
	 out.println(""
			 + 			"<h2> 이름 : " + nameString
			 +			"<h2> 나이 : " + age
			 );
	 
	 out.println(""
			 +		"</body>"
			 + "</html>"
			 ); 
	 
	}

}

package com.kepg.servlet.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05Controller extends HttpServlet{
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		response.setContentType("text/html");
		
		// get방식 -> url encoding으로 알아서 변환
		// post방식 -> request body에 저장이 되기 때문에 인코딩 방식 직접 설정해줘야한다.
		
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String birthString = request.getParameter("birth");
		
		int birth = Integer.parseInt(birthString.substring(0, 4));
		int age = 2025 - birth + 1;
		
		
		out.println(""
				+ "<html>"
				+		"<head><title>ex05</title></head>"
				+		"<body>");
		
		out.println(""
				+ 			"<div>이름 : " + name + "<br>"
				+				  "나이 : " + age + "</div>");
		
		out.println(""
				+		"</body>"
				+ "</html>");
	}

}

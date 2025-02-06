package com.kepg.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test09")
public class Test09Controller extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 자기소개가 url에 쓰기 너무 길기 때문에 post가 더 적합
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String introduce = request.getParameter("introduce");
		
		out.println(""
				+ "<html>"
				+		"<head><title>입사 지원 결과</title></head>"
				+		"<body>");
		
		out.println(""
				+			"<h1>" + name + "님 입사 지원이 완료되었습니다. </h1>"
				+			"<hr>"
				+			"<div> 지원내용 <br>" + introduce + "</div>"
				);
		
		out.println(""
				+		"</body>"
				+ "</html>");
		
	}
}

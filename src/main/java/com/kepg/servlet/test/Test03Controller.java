package com.kepg.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test03")
public class Test03Controller extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.println(""
				+ "<html>"
				+ 		"<head><title>test03</title></head>"
				+ 		"<body>"
				+ 			"<h1>[단독] 권베베가 야옹해 </h1>"
				+ 			"<div>기사 입력시간 : 2025/1/22 23:32:06</div>"
				+ 			"<hr>"
				+ 			"<div>끝</div>"
				+		"</body>"
				+ "</html>");
	}
}

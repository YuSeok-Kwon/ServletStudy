package com.kepg.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class test10Controller extends HttpServlet{
	
	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	    
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 비밀번호는 url에 노출되면 안되므로 post사용
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		out.println(""
				+ "<html>"
				+		"<head><title>로그인 결과</title></head>"
				+ 		"<body>");
		
		if(!id.equals(userMap.get("id"))) {
			out.println(""
					+		"<h2>존재하지 않는 아이디입니다.</h2>");
		} else if(!password.equals(userMap.get("password"))) {
			out.println(""
					+		"<h2>비밀번호를 잘못 입력셨습니다.</h2>");
		} else {
			out.println(""
					+		"<h2>환영합니다" + userMap.get("name") + "님</h2>");
		}
			 	

		out.println(""
				+		"</body>"
				+ "</html>");
		
		
	}
	
}

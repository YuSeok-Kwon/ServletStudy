package com.kepg.servlet.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test07")
public class Test07Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
	 response.setCharacterEncoding("utf-8");
	 response.setContentType("text/html");
	 
	 PrintWriter out = response.getWriter();
	 
	 String address = request.getParameter("address");
	 String creditCard = request.getParameter("creditCard");
	 String price = request.getParameter("price");
	 
	 out.println(""
			 + "<html>"
			 +		"<head><title>주문</title></head>"
			 +		"<body>"
			 );
	 
	 out.println(""
			 +			"<h3>" + address + "로 배달 준비중 </h3>"
			 + 			"<hr>"
			 +			"<div>결제 금액 : " + price +"원 </div>"
			 );
	 
	 out.println(""
			 + 		"</body>"
			 + "</html>");
	}

}

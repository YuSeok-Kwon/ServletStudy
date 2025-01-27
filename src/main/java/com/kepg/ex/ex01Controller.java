package com.kepg.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ex01Controller extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest requset, HttpServletResponse response) throws IOException {
		
		// 결과물에 대한 정보 설정
		// Response Header
		// character set : utf-8
		response.setCharacterEncoding("utf-8");
		// Data Type
		// MIME (Multiperpose Internet Mail Extensions)
		// text/plain : 규격없는 문자열
		response.setContentType("text/plain");
		
		// 결과물
		// Response Body
		PrintWriter out = response.getWriter();
		// 현재 날짜와 시간을 응답으로 돌려주는 페이지
		Date date = new Date();
		
		out.println(date);
		
		// 원하는 형태의 문자열로 날짜 시간 표현하기
		// 2025년 1월 22일 22:15:34
		SimpleDateFormat formmater = new SimpleDateFormat("yyyy년 M월 d일 HH:mm:ss");
		
		String dateTimeString = formmater.format(date);
		out.println(dateTimeString);
	}
}

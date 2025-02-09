package com.kepg.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kepg.common.MysqlService;

@WebServlet("/db/bookmark/create")
public class BookmarkCreateController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		String query = "INSERT INTO bookmark"
				+ "(name, url)"
				+ "VALUE"
				+ "('" + name + "', '" + url + "');";
		
		MysqlService sql = new MysqlService();
		sql.connect();
		
		int count = sql.update(query);
		
		response.sendRedirect("/db/bookmark/list.jsp");
		
	}

}

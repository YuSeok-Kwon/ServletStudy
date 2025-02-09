package com.kepg.database.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kepg.common.MysqlService;

@WebServlet("/db/bookmark/delete")
public class BookmarkDeleteController extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		
		MysqlService sql = new MysqlService();
		sql.connect();
		
		String query = "DELETE FROM bookmark WHERE id = " + id + ";";
		
		int count = sql.update(query);
		
		response.sendRedirect("/db/bookmark/list.jsp");
	}
}
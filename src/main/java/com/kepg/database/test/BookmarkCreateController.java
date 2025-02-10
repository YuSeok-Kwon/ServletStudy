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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		String id = (request.getParameter("id") != null && !request.getParameter("id").isEmpty()) ? request.getParameter("id") : "-1";
		
		MysqlService sql = MysqlService.getInstance();
		sql.connect();
	
		String query = "";
	
		if(id.equals("-1")) {
		 query = "INSERT INTO bookmark"
				+ "(name, url)"
				+ "VALUE"
				+ "('" + name + "', '" + url + "');";
		
		int count = sql.update(query);
		
		} else {
		 query = "DELETE FROM bookmark WHERE id = " + id + ";";
			
			int count = sql.update(query);
		}
		
		response.sendRedirect("/db/bookmark/list.jsp");
		
	}

}

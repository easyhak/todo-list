package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TodoDao;
import dto.TodoDto;

@WebServlet("/TodoAddServlet")
public class TodoAddServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("UTF-8");
		String t = (String)request.getParameter("title");
		String n = (String)request.getParameter("name");
		int s = Integer.parseInt(request.getParameter("sequence"));
		TodoDao dao = new TodoDao();
		int insert = dao.addTodo(t, n, s);
		
		String path = request.getContextPath();
		System.out.println(path);
        response.sendRedirect(path + "/todo");
		
	}
}

package servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TodoDao;

@WebServlet("/type")
public class TodoTypeServlet  extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id_ = request.getParameter("id");
		String type = request.getParameter("type");
		TodoDao todoDao = new TodoDao();
		if (id_ != null && type != null) {
			long id = Long.parseLong(id_);
			
			int updateCount = todoDao.updateTodo(id, type);
			if (updateCount == 1) {
				response.setStatus(200);
			}
			else {
				response.sendError(400, "해당하는 ID값이 없습니다.");
			}
		}
		
	}
}

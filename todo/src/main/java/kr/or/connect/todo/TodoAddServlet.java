package kr.or.connect.todo;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.connect.todo.dao.TodoDao;
import kr.or.connect.todo.dto.TodoDto;

/**
 * Servlet implementation class TodoAddServlet
 */
@WebServlet("/todoadd")
public class TodoAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String title = (String)request.getParameter("title");
		String name = (String)request.getParameter("name");
		int sequence = Integer.parseInt(request.getParameter("sequence"));
		
		TodoDto todoDto = new TodoDto();
		todoDto.setTitle(title);
		todoDto.setName(name);
		todoDto.setSequence(sequence);
		
		TodoDao todoDao = new TodoDao();
		int addCount = todoDao.addTodo(todoDto);
		if (addCount != 0){
			//성공시 메인화면으로
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("./MainServlet");
			requestDispatcher.forward(request, response);
		}else {
			//실패시 다시 등록화면
			RequestDispatcher requestDispatcher = request.getRequestDispatcher("./todoform");
			requestDispatcher.forward(request, response);
		}
	}

}

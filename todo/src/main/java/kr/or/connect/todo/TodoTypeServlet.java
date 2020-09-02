package kr.or.connect.todo;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
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
 * Servlet implementation class TodoTypeServlet
 */
@WebServlet("/todotype")
public class TodoTypeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoTypeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		TodoDao todoDao = new TodoDao();
		List<TodoDto> list = (List<TodoDto>)request.getSession().getAttribute("todoList");
		Long selId = Long.valueOf(String.valueOf(request.getSession().getAttribute("todoSel"))); //object type을 long타입으로 바꿔서 저장
		
		//해당 id를 찾아서 type에 따라 type을 바꿔준다.
		for(TodoDto todo : list) {
			if(todo.getId() == selId) {
				if(todo.getType().equals("TODO"))
					todo.setType("DOING");
				else if(todo.getType().equals("DOING")) 
					todo.setType("DONE");
				out.println(todo);
				todoDao.updateTodo(todo);
				break;
			}
		}
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("./MainServlet");
		requestDispatcher.forward(request, response);
	}
}

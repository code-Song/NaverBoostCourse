package kr.or.connect.todo;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class TodoFormServlet
 */
@WebServlet("/todoform")
public class TodoFormServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public TodoFormServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("./todoForm.jsp");
		requestDispatcher.forward(request, response);
	}

}

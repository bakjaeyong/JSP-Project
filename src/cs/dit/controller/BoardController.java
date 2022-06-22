package cs.dit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.command.MCommand;
import cs.dit.command.MListCommand;

@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String viewPage = null;
		MCommand command = null;
		
		String uri = request.getRequestURI();
		System.out.println(uri);
		String com = uri.substring(uri.lastIndexOf("/")+1, uri.lastIndexOf(".do"));
		
		if(com != null && com.trim().equals("list")) {
			System.out.println("1");
			command = new MListCommand();
			System.out.println("2");
			command.execute(request, response);
			System.out.println("3");
			viewPage = "/LIVESOCRE-main/BoardList.jsp";
			System.out.println(viewPage);
			RequestDispatcher rd = request.getRequestDispatcher(viewPage);
			rd.forward(request, response);
		}	
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doHandle(request, response);
	}

}

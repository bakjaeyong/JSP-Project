package cs.dit.command;

import java.io.IOException;
import java.rmi.ServerException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cs.dit.dao.BoardDAO;
import cs.dit.dto.BoardDTO;

public class MListCommand implements MCommand{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServerException, IOException {
		BoardDAO dao = new BoardDAO();
		
		ArrayList<BoardDTO> dtos = dao.list();
		System.out.println("service");
		
		request.setAttribute("dtos", dtos);
	}
}

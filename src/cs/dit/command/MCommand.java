package cs.dit.command;

import java.io.IOException;
import java.rmi.ServerException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface MCommand {
	public void execute(HttpServletRequest requset, HttpServletResponse response) throws ServerException, IOException;

}

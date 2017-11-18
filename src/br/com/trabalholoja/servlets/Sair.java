package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.Login;

@WebServlet("/sair")
public class Sair extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Sair() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	Login lg = new Login();
    	lg.Sair();
    	
    	RequestDispatcher rd = request.getRequestDispatcher(lg.reDir());
    	rd.forward(request, response);
    }

}

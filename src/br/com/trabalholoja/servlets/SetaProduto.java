package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.entidades.Loja;

/**
 * Servlet implementation class SetaProduto
 */
@WebServlet("/setaProduto")
public class SetaProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public SetaProduto() {
        super();
    }

    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		Loja.id = id;
		
    	RequestDispatcher rd = request.getRequestDispatcher("/editarProduto.jsp");
    	rd.forward(request, response);
    }

}

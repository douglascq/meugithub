package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.DeletaProdutos;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/MoverLixeira")
public class MoverLixeira extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public MoverLixeira() {
        super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		int id = Integer.parseInt(request.getParameter("id"));
		Loja.id = id;
		
    	DeletaProdutos lixo = new DeletaProdutos();
    	lixo.Lixeira();
    	
    	RequestDispatcher rd = request.getRequestDispatcher("/lixeira.jsp");
    	rd.forward(request, response);
    }

}

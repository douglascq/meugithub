package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.RemoverCarrinho;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/RemoverCarrinho")
public class RemoveCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public RemoveCarrinho() {
        super();
    }
    
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
		int id = Integer.parseInt(request.getParameter("id"));
		
		Loja c = new Loja();
		c.setCarrinho(id);
		
		RemoverCarrinho TirarDoCarrinho = new RemoverCarrinho();
		TirarDoCarrinho.TiraCarrinho(c);
		
		Loja.qndQuant--;
		

    	
    	RequestDispatcher rd = request.getRequestDispatcher("/carrinhoCliente.jsp");
    	rd.forward(request, response);
    }

}

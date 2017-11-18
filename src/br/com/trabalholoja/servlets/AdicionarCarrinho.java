package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.addCarrinho;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/AdicionarCarrinho")
public class AdicionarCarrinho extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdicionarCarrinho() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	int produto = Integer.parseInt(request.getParameter("produto"));
    	
    	Loja c = new Loja();
    	c.setProduto(produto);
    	
    	addCarrinho add = new addCarrinho();
    	add.Carrinho(c);
    	
    	RequestDispatcher rd = request.getRequestDispatcher("/carrinhoCliente.jsp");
    	rd.forward(request, response);
    }

}

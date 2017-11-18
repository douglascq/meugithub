package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.Login;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/logar")
public class Logar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Logar() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");    	
    	
    	Loja c = new Loja();
    	c.setEmail(email);
    	c.setSenha(senha);    	
    	
    	Login lg = new Login();
    	lg.Logar(c);
    	
    	RequestDispatcher rd = request.getRequestDispatcher(lg.reDir());
    	rd.forward(request, response);
    }

}

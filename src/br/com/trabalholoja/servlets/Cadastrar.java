package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.CadastrarUsuario;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/cadastrarUsuario")
public class Cadastrar extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Cadastrar() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	String nome = request.getParameter("nome");
    	String cpf = request.getParameter("cpf");
    	String senha = request.getParameter("senha");
    	String email = request.getParameter("email");

    	
    	Loja c = new Loja();
    	c.setNome(nome);
    	c.setCpf(cpf);
    	c.setSenha(senha);
    	c.setEmail(email);
    	
    	CadastrarUsuario cad = new CadastrarUsuario();
    	cad.CadUser(c);
    	
    	RequestDispatcher rd = request.getRequestDispatcher("/index.jsp");
    	rd.forward(request, response);
    }

}

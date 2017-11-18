package br.com.trabalholoja.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.trabalholoja.dao.AddProdutos;
import br.com.trabalholoja.entidades.Loja;

@WebServlet("/AdicionarProduto")
public class AdicionarProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdicionarProduto() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	String nome = request.getParameter("nomeProduto");
    	String descricao = request.getParameter("descricao");
    	String foto = request.getParameter("foto");
    	String download = request.getParameter("download");    	
    	double preco = Double.parseDouble(request.getParameter("preco") != null ? request.getParameter("preco") : "0");
    	
    	Loja c = new Loja();
    	c.setNomeProduto(nome);
    	c.setDescricao(descricao); 
    	c.setFoto(foto);
    	c.setDownload(download);
    	c.setPreco(preco);
    	
    	AddProdutos add = new AddProdutos();
    	add.AddProduto(c);
    	
    	RequestDispatcher rd = request.getRequestDispatcher("/listarProdutos.jsp");
    	rd.forward(request, response);
    }

}

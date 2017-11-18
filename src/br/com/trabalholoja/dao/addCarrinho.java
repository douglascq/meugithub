package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;



public class addCarrinho {

	
	public void Carrinho(Loja c) {
		Connection con = ConnectionFactory.getConnection();

		try {

			PreparedStatement stmt = con.prepareStatement("INSERT INTO carrinho (user, produto) VALUES (?, ?)");
			stmt.setInt(1, Loja.usuario);
			stmt.setInt(2, c.getProduto());
			
			stmt.execute();
			
			Loja.qndQuant++;
			
			System.out.println("PRODUTO ADD NO CARRINHO");
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

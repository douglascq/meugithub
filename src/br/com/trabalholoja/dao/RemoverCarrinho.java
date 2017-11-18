package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;



public class RemoverCarrinho {

	
	public void TiraCarrinho(Loja c) {
		Connection con = ConnectionFactory.getConnection();

		try {

			PreparedStatement stmt = con.prepareStatement("DELETE FROM carrinho WHERE id = ? AND user="+Loja.usuario);
			stmt.setInt(1, c.getCarrinho());
			
			System.out.println(c.getCarrinho());
			
			stmt.execute();
			
			System.out.println("REMOVIDO DO CARRINHO");
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}

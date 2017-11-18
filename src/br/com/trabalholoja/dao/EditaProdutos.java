package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;



public class EditaProdutos {

	
	public void EditarProd(Loja c) {
		Connection con = ConnectionFactory.getConnection();

		try {

			PreparedStatement stmt = con.prepareStatement("UPDATE produtos SET nome=?, descricao=?, foto=?, download=?, preco=? WHERE id = "+Loja.id);
			stmt.setString(1, c.getNomeProduto());
			stmt.setString(2, c.getDescricao());
			stmt.setString(3, c.getFoto());
			stmt.setString(4, c.getDownload());
			stmt.setDouble(5, c.getPreco());
			
			stmt.execute();
			
			System.out.println("PRODUTO EDITADO");
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

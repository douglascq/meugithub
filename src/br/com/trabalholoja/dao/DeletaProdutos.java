package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;



public class DeletaProdutos {

	
	public void Lixeira() {
		Connection con = ConnectionFactory.getConnection();

		try {

			PreparedStatement stmt = con.prepareStatement("UPDATE produtos SET lixo=1 WHERE id="+Loja.id);
			
			stmt.execute();
			
			System.out.println("PRODUTO MOVIDO PRA LIXEIRA");
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void Restaurar() {
		Connection con = ConnectionFactory.getConnection();

		try {

			PreparedStatement stmt = con.prepareStatement("UPDATE produtos SET lixo=0 WHERE id="+Loja.id);
			
			stmt.execute();
			
			System.out.println("PRODUTO RESTAURADO");
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

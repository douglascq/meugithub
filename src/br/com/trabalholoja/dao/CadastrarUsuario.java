package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class CadastrarUsuario {

	
	public void CadUser(Loja c) {
		Connection con = ConnectionFactory.getConnection();

		try {
			
			PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM usuarios WHERE cpf = ?");
			stmt1.setString(1, c.getCpf());
			ResultSet rs = stmt1.executeQuery();
			
			
			if(rs.next())
			{
				System.out.println("Usuário já cadastrado.");
			}
			else
			{	
				PreparedStatement stmt = con.prepareStatement("INSERT INTO usuarios (nome, cpf, email, senha, nivel) VALUES (?, ?, ?, ?, ?)");
				stmt.setString(1, c.getNome());
				stmt.setString(2, c.getCpf());
				stmt.setString(3, c.getEmail());
				stmt.setString(4, c.getSenha());
				stmt.setInt(5, 1);
				
				stmt.execute();
				
				System.out.println("Usuário cadastrado com sucesso!");
			}
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

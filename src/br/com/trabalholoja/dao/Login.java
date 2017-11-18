package br.com.trabalholoja.dao;

import br.com.trabalholoja.conexao.ConnectionFactory;
import br.com.trabalholoja.entidades.Loja;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class Login {

	String url;
	
	public void Logar(Loja c) {
		Connection con = ConnectionFactory.getConnection();

		try {
			
			PreparedStatement stmt1 = con.prepareStatement("SELECT * FROM usuarios WHERE email = ? AND senha = ?");
			stmt1.setString(1, c.getEmail());
			stmt1.setString(2, c.getSenha());
			
			ResultSet rs = stmt1.executeQuery();
			
			if(rs.next())
			{
				url = "/index.jsp";
				System.out.println("ok");
				Loja.usuario = rs.getInt(1);
			}
			else
			{	
				url = "/erroLogin.jsp";
				System.out.println("nao");
			}
			
			rs.close();
			
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM carrinho WHERE user ="+Loja.usuario);
			ResultSet conta = stmt.executeQuery();
			
			while (conta.next())
			{
				Loja.qndQuant++;
			}
			
			System.out.println(Loja.qndQuant);
			
			con.close();
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void Sair() {
		Loja.usuario = 0;
		url = "/index.jsp";
	}
	
	public String reDir() {
		return url;
	}
}

<%@ page import="br.com.trabalholoja.dao.AddProdutos"%>
<%@ page import="br.com.trabalholoja.entidades.Loja"%>
<%@ page import="br.com.trabalholoja.conexao.ConnectionFactory"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ include file="topoCliente.jsp" %>
<div class="mdl-layout__content">
<div class="box"><h3>Produtos</h3></div>

<div class="mdl-grid">

	<%
	Connection con = ConnectionFactory.getConnection();	
	
	Loja c = new Loja();
	
	try {
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM produtos WHERE lixo = 0");
		ResultSet rs = stmt.executeQuery();

		
		while(rs.next())
		{
			
          	if (Loja.usuario != 0)
          	{
          		out.print (              				
    					"<div class='mdl-cell mdl-cell--3-col'>"+
 							"<img src='./images/" + rs.getString("foto") + "' width='200px' height='200px'>"+
 							"<h4 style='margin:0'>" + rs.getString("nome") + "</h4>"+
 							"<p>" + rs.getString("descricao") + "</p>"+
 							"<form action='AdicionarCarrinho' method='post'><input type='hidden' value='" + rs.getString("id") + "' name='produto'>"+
 							"<button class='mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored'><i class='fa fa-shopping-cart' aria-hidden='true'></i> ADICIONAR AO CARRINHO</button>"+
 							"</form></div>"
    						);
          	}
          
          	else
          	{
          		out.print (              				
    					"<div class='mdl-cell mdl-cell--3-col'>"+
 							"<img src='./images/" + rs.getString("foto") + "' width='200px' height='200px'>"+
 							"<h4 style='margin:0'>" + rs.getString("nome") + "</h4>"+
 							"<p>" + rs.getString("descricao") + "</p>"+
 							"<a href='clienteLogin.jsp' class='mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect'><i class='fa fa-sign-in' aria-hidden='true'></i> FAZER LOGIN</a>"+
 							"</div>"
 						);
          	}
			
		} 	
			
		con.close();
		rs.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	%>
	</div>
</div>

<%@ include file="rodape.jsp" %>
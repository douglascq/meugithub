<%@ page import="br.com.trabalholoja.dao.AddProdutos"%>
<%@ page import="br.com.trabalholoja.entidades.Loja"%>
<%@ page import="br.com.trabalholoja.conexao.ConnectionFactory"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ include file="topoCliente.jsp" %>
<div class="mdl-layout__content">
<div class="box"><h3>Carrinho</h3></div>
 <table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
  <thead>
    <tr>
      <th>ID</th>
      <th>Foto</th>
      <th>Nome</th>
      <th>Descrição</th>
      <th>Preço</th>
      <th>Download</th>
      <th>Ações</th>
    </tr>
  </thead>
  <tbody>
	
	<%
	
	Connection con = ConnectionFactory.getConnection();	
	
	Loja c = new Loja();
	
	try {
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM carrinho, produtos WHERE carrinho.produto = produtos.id AND carrinho.user = "+Loja.usuario);
		ResultSet rs = stmt.executeQuery();

		
		while(rs.next())
		{
			out.print (
					"<tr>"+
					"<th>" + rs.getInt("id") + "</th>"+
					"<th><img src='./images/" + rs.getString("foto") + "' width='50px' height='50px'></th>"+							
					"<th>" + rs.getString("nome") + "</th>"+
					"<th>" + rs.getString("descricao") + "</th>"+
					"<th>" + rs.getString("preco") + "</th>"+
					"<th><a class='mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect mdl-button--colored' href='"+ rs.getString("download") + "' targer='new'>DOWNLOAD</a></th>"+
					"<th><form method='post' action='RemoverCarrinho' style='float: right; margin-left: 5px;'>"+
					"<input type='hidden' name='id' value='" + rs.getInt("carrinho.id") + "'>"+
					"<button class='mdl-button mdl-js-button mdl-button--fab mdl-button--mini-fab mdl-button--colored'><i id='tt" + rs.getInt("id") + "' class='fa fa-times'></i></button>"+
					"<div class='mdl-tooltip mdl-tooltip--right' data-mdl-for='tt" + rs.getInt("id") + "'>Remover</div>"+
					"</form></th>"+
					"</tr>"									
					);
		}
			
		con.close();
		rs.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	%>

  </tbody>
</table>
<div class="box"><h3><a class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect" href="index.jsp"><i class='fa fa-caret-left'></i>  ADICIONAR MAIS PRODUTOS NO CARRINHO</a></h3></div>
</div>

<%@ include file="rodape.jsp" %>
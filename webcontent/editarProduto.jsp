<%@ page import="br.com.trabalholoja.dao.AddProdutos"%>
<%@ page import="br.com.trabalholoja.entidades.Loja"%>
<%@ page import="br.com.trabalholoja.conexao.ConnectionFactory"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.Connection"%>
<%@ include file="topo.jsp" %>
<div class="android-content mdl-layout__content">

	<%
	
	Connection con = ConnectionFactory.getConnection();	
	
	Loja c = new Loja();
	
	try {
		PreparedStatement stmt = con.prepareStatement("SELECT * FROM produtos WHERE id = "+Loja.id);
		
		ResultSet rs = stmt.executeQuery();
		
		if (rs.next())
		{		
		%>

        <div class="content-grid mdl-grid">
          <div class="mdl-cell">
            <!-- add content here -->
          </div>
          <div class="mdl-cell">
          <h3>Editar Produto</h3>
            <form action="EditaProduto" name="EditaProduto" method="post">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" id="nomeProduto" name="nomeProduto" value="<%=rs.getString("nome") %>">
              <label class="mdl-textfield__label">Nome do Produto</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <textarea class="mdl-textfield__input" type="text" id="descricao" name="descricao" rows= "3"><%=rs.getString("descricao") %></textarea>
              <label class="mdl-textfield__label">Descrição do Produto</label>
            </div>

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" id="foto" name="foto" value="<%=rs.getString("foto") %>">
              <label class="mdl-textfield__label">Foto</label>
            </div>   

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" id="download" name="download" value="<%=rs.getString("download") %>">
              <label class="mdl-textfield__label">Link para Download</label>
            </div>     

            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
              <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="preco" name="preco" value="<%=rs.getDouble("preco") %>">
              <label class="mdl-textfield__label">Preço do Produto</label>
              <span class="mdl-textfield__error">Favor insira o preço corretamente!</span>
            </div>

            <br>

            <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"><i class="material-icons">send</i> Editar Produto</button>


          </form>
          </div>
          <div class="mdl-cell">
            <!-- and probably also here -->
          </div>
        </div>
        <%
		}
			
		con.close();
		rs.close();
		
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	%>
</div>
<%@ include file="rodape.jsp" %>
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
	<div class="mdl-cell mdl-cell--6-col">
	<h3>Logar</h3>
	<form action="logar" name="logar" method="post">
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input" type="email" id="email" name="email">
	    <label class="mdl-textfield__label" for="sample1">E-mail...</label>
	  </div>	  
	  <br>  
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input" type="password" id="senha" name="senha">
	    <label class="mdl-textfield__label" for="sample1">Senha...</label>
	  </div>
	  <br> 
	  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored"><i class="fa fa-sign-in" aria-hidden="true"></i> Login</button>
	<div class="erro"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i>	Login incorreto! </div>
	</form>	
	</div>
	<div class="mdl-cell mdl-cell--6-col">
	<h3>Cadastrar</h3>
	<form action="cadastrarUsuario" name="cadastrarUsuario" method="post">
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input" type="text" id="nome" name="nome">
	    <label class="mdl-textfield__label" for="sample1">Nome</label>
	  </div>	  
	  <br>  
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input cpf" type="text" id="cpf" name="cpf">
	    <label class="mdl-textfield__label" for="sample1">CPF</label>
	  </div>	  
	  <br>  
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input" type="email" id="email" name="email">
	    <label class="mdl-textfield__label" for="sample1">E-mail</label>
	  </div>	  
	  <br>  
	  <div class="mdl-textfield mdl-js-textfield">
	    <input class="mdl-textfield__input" type="password" id="senha" name="senha">
	    <label class="mdl-textfield__label" for="sample1">Senha</label>
	  </div>	  
	  <br>
	  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent" type="reset">Limpar</button>
	  <button class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored" type="submit"><i class="fa fa-sign-in" aria-hidden="true"></i> Cadastrar</button>
	</form>
</div>
</div>
</div>

<%@ include file="rodape.jsp" %>
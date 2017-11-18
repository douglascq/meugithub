<%@ page import="br.com.trabalholoja.entidades.Loja"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
    <title>Loja com JSP + Material Design Lite</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="css/material.indigo-pink.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="styles.css">
  </head>
  <body>
    <div class="mdl-layout mdl-js-layout  mdl-layout--fixed-header">
      <div class="mdl-layout__header mdl-layout__header">
        <div class="mdl-layout__header-row">
          <span class="android-title mdl-layout-title">
            LOJA JSP
          </span>
          <div class="android-header-spacer mdl-layout-spacer"></div>

          <!-- Navigation -->
          <div class="android-navigation-container">
            <nav class="android-navigation mdl-navigation">
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="index.jsp">Página Inicial</a>
              <%
              	if (Loja.usuario != 0)
              	{
              		out.print (              				
              				"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='./carrinhoCliente.jsp'>"+
              				" <i class='fa fa-shopping-cart' aria-hidden='true'></i> <span class=' mdl-badge' data-badge='"+ Loja.qndQuant +"'>Carrinho</span></a>"+
                      		"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='./sair'> <i class='fa fa-sign-out' aria-hidden='true'></i> Sair</a>"  				
              				);
              	}
              
              	else
              	{
              		out.print (              				
              				"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='clienteLogin.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i> Login</a>"             				
              				);
              	}
              
              %>
            </nav>
          </div>
          
           <div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
            <label class="mdl-button mdl-js-button mdl-button--icon" for="search-field">
              <i class="material-icons">search</i>
            </label>
            <div class="mdl-textfield__expandable-holder">            
            	<form method="get" action="pesquisaCliente.jsp">
	              <input class="mdl-textfield__input" type="text" id="search-field" id="s" name="s">
	              <input type="submit" style="display: none;">
              </form>
            </div>
          </div>
        </div>
      </div>

      <div class="android-drawer mdl-layout__drawer">
        <span class="mdl-layout-title">
        LOJA JSP
        </span>
        <nav class="mdl-navigation">
              <a class="mdl-navigation__link " href="index.jsp">Página Inicial</a>
              <%
              	if (Loja.usuario != 0)
              	{
              		out.print (              				
              				"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='./carrinhoCliente.jsp'>"+
              				" <i class='fa fa-shopping-cart' aria-hidden='true'></i> <span class=' mdl-badge' data-badge='"+ Loja.qndQuant +"'>Carrinho</span></a>"+
                      		"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='./sair'> <i class='fa fa-sign-out' aria-hidden='true'></i> Sair</a>"  				
              				);
              	}
              
              	else
              	{
              		out.print (              				
              				"<a class='mdl-navigation__link mdl-typography--text-uppercase' href='clienteLogin.jsp'><i class='fa fa-sign-in' aria-hidden='true'></i> Login</a>"             				
              				);
              	}
              
              %>
        </nav>
      </div>
   

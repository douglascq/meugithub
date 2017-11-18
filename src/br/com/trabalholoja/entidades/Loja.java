package br.com.trabalholoja.entidades;

public class Loja {
	int produto;
	int user;
	int carrinho;
	String nomeProduto;
	String descricao;
	String foto;
	String download;
	double preco;
	String email;
	String nome;
	String cpf;
	String senha;
	
	public static int nivel = 0;
	public static int usuario = 0;
	public static int id = 0;
	public static int qndQuant = 0;

	public int getProduto() {
		return produto;
	}

	public int getCarrinho() {
		return carrinho;
	}

	public void setCarrinho(int carrinho) {
		this.carrinho = carrinho;
	}

	public void setProduto(int produto) {
		this.produto = produto;
	}

	public int getUser() {
		return user;
	}

	public void setUser(int user) {
		this.user = user;
	}

	public String getNomeProduto() {
		return nomeProduto;
	}

	public void setNomeProduto(String nomeProduto) {
		this.nomeProduto = nomeProduto;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getDownload() {
		return download;
	}

	public void setDownload(String download) {
		this.download = download;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public static int getNivel() {
		return nivel;
	}

	public static void setNivel(int nivel) {
		Loja.nivel = nivel;
	}
	
	
	
}

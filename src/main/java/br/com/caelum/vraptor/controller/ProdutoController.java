package br.com.caelum.vraptor.controller;

import java.util.List;

import javax.inject.Inject;
import javax.persistence.EntityManager;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Delete;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.ProdutoDao;
import br.com.caelum.vraptor.model.Produto;
import br.com.caelum.vraptor.util.JPAUtil;
import br.com.caelum.vraptor.view.Results;

@Controller
public class ProdutoController {
	
	private final Result result;
	
	public ProdutoController() {
		this(null);
	}
	
	@Inject
	public ProdutoController(Result result) {
		this.result = result;
	}
	
	@Get
	public void sobre() {
		
	}
	
	@Get
	public void lista() {
		EntityManager em = JPAUtil.criaEntityManager();
		ProdutoDao dao = new ProdutoDao(em);
		result.include("produtoList", dao.lista());
	}
	
	@Get
	public void listaEmXml() {
		EntityManager em = JPAUtil.criaEntityManager();
		ProdutoDao dao = new ProdutoDao(em);
		result.use(Results.xml()).from(dao.lista()).serialize();
	}
	@Get
	public void listaEmJson() {
		EntityManager em = JPAUtil.criaEntityManager();
		ProdutoDao dao = new ProdutoDao(em);
		result.use(Results.json()).from(dao.lista()).serialize();
	}
	
	@Get
	public void formulario() {
		
	}
	
	@Post
	public void adiciona(Produto produto) {
		EntityManager em = JPAUtil.criaEntityManager();
		ProdutoDao produtoDao = new ProdutoDao(em);
		em.getTransaction().begin();
		produtoDao.adiciona(produto);
		em.getTransaction().commit();
		result.include("mensagem", "Produto Cadastrado com sucesso!");
		result.redirectTo(this).lista();
	}
	
	@Get
	public void remove(Produto produto) {
		EntityManager em = JPAUtil.criaEntityManager();
		ProdutoDao produtoDao = new ProdutoDao(em);
		em.getTransaction().begin();
		produtoDao.remove(produto);
		em.getTransaction().commit();
	}
}

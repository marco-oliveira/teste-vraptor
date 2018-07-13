package br.com.caelum.vraptor.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.dao.UsuarioDao;
import br.com.caelum.vraptor.model.Usuario;
import br.com.caelum.vraptor.model.UsuarioLogado;
import br.com.caelum.vraptor.validator.I18nMessage;
import br.com.caelum.vraptor.validator.Validator;

@Controller
public class LoginController {

	private final UsuarioDao dao;
	private final Validator validator;
	private final UsuarioLogado usuarioLogado;
	private final Result result;

	public LoginController() {
		this(null, null, null, null);
	}

	@Inject
	public LoginController(UsuarioDao dao, Validator validator, UsuarioLogado usuarioLogado,
			Result result) {
		this.dao = dao;
		this.validator = validator;
		this.usuarioLogado = usuarioLogado;
		this.result = result;
	}

	@Get
	public void formulario() {
	}

	@Post
	public void autentica(Usuario usuario) {
		if (!dao.existe(usuario)) {
			validator.add(new I18nMessage("login", "login.autentica"));
			validator.onErrorForwardTo(this).formulario();
		}
		usuarioLogado.setUsuario(usuario);
		result.forwardTo(ProdutoController.class).lista();
	}
}

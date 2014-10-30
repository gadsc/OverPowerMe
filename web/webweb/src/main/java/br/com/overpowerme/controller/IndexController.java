package br.com.overpowerme.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class IndexController {

	@Inject
	private Result result;

	@Path("/index")
	public void index() {
		result.include("mensagem", "Olá VRaptor4!");
	}
}
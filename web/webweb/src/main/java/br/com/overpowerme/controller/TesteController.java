package br.com.overpowerme.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class TesteController {

	@Inject
	private Result result;
	
	@Path("/teste")
	public void teste() {
		result.include("mensagem", "Olá VRaptor4!");
	}
	
	@Path("/imagens")
	public void imagens() {
		result.include("mensagem", "Olá VRaptor4!");
	}
	
	@Path("/teste_lista")
	public void teste_lista() {
		result.include("mensagem", "Olá VRaptor4!");
	}
	
	@Path("/teste_lista2")
	public void teste_lista2() {
		result.include("mensagem", "Olá VRaptor4!");
	}
}
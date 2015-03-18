package br.com.overpowerme.controller;

import javax.inject.Inject;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Result;

@Controller
public class MarcasController {

	@Inject
	private Result result;
	
	@Path("/marcas")
	public void marcas() {
		result.include("mensagem", "Olá VRaptor4!");
	}
	
	@Path("/carousel")
	public void carousel() {
		result.include("mensagem", "Olá VRaptor4!");
	}
	
	
}
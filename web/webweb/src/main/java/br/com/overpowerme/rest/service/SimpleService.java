package br.com.overpowerme.rest.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import br.com.overpowerme.model.json.Icone;
import br.com.overpowerme.model.json.Runa;
import br.com.overpowerme.model.json.Tipo;

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Path("/hello")
public class SimpleService implements Serializable {

	private Gson gson;
	private List<Runa> runas;

	@PostConstruct
	public void initialize() {
		gson = new Gson();
		runas = new ArrayList<Runa>();
		runas.add(new Runa(1, new Tipo(1, "Dano de Ataque",
				"Acrescenta dano de ataque"), new Icone(
				"resources/img/rune0.png", "-96px -0px"), 5D));
		runas.add(new Runa(2, new Tipo(2, "% Dano crítico",
				"Acrescenta dano crítico"), new Icone(
				"resources/img/rune0.png", "-144px -0px"), 1.12D));
		runas.add(new Runa(3, new Tipo(3, "% Velocidade de Ataque",
				"Acrescenta velocidade de ataque"), new Icone(
				"resources/img/rune0.png", "-192px -0px"), 1.2D));
		runas.add(new Runa(4, new Tipo(4, "% Chance de Crítico",
				"Aumenta a chance de crítico"), new Icone(
				"resources/img/rune0.png", "-240px -0px"), 0.27D));
		runas.add(new Runa(5, new Tipo(5, "Penetração de Armadura",
				"Aumenta a penetração de armadura"), new Icone(
				"resources/img/rune0.png", "-96px -0px"), 8D));
	}

	private static final long serialVersionUID = -2434608870284261408L;

	// This method is called if TEXT_PLAIN is request
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayPlainTextHello() {
		return "Hello Jersey";
	}

	// This method is called if XML is request
	@Path("/xml")
	@GET
	@Produces(MediaType.TEXT_XML)
	public String sayXMLHello() {
		return "<?xml version=\"1.0\"?>" + "<hello> Hello Jersey" + "</hello>";
	}

	// This method is called if HTML is request
	@Path("/html")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String sayHtmlHello() {
		return "<html> " + "<title>" + "Hello Jersey" + "</title>"
				+ "<body><h1>" + "Hello Jersey" + "</body></h1>" + "</html> ";
	}

	@Path("/json")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayJsonHello() {
		JsonObject obj = new JsonObject();
		obj.addProperty("mensagem", "Hello Jersey");
		return obj.toString();
	}

	@Path("/runa/{id}")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public String sayRunaHello(@PathParam("id") int id) {
		return gson.toJson(runas.get(id - 1));
	}

	@Path("/runas")
	@GET
	@Produces(MediaType.APPLICATION_JSON + ";charset=utf-8")
	public String sayRunasHello() {
		return gson.toJson(runas);
	}
}
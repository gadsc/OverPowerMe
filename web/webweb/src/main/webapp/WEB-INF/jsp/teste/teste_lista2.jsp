<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/jquery-1.11.2.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link rel="stylesheet" href="resources/css/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Marcas ${mensagem} }</title>
<style>
#sortable1, #sortable2 {
	width: 450px;
	min-height: 95px;
	list-style-type: none;
	margin: 0;
	padding: 5px 0 0 0;
	float: left;
	margin-right: 10px;
	text-align: center;
}

/* #sortable1 li, #sortable2 li { */
/* 	margin: 0 5px 5px 5px; */
/* 	padding: 5px; */
/* 	font-size: 1.2em; */
/* 	width: 120px; */
/* } */

/* 	#sortable1, #sortable2 { list-style-type: none; margin: 0; padding: 0; width: 450px;, height:100px; } */
#sortable1 li, #sortable2 li {
	margin: 3px 3px 3px 0;
	padding: 2px;
	border: 1px solid #B22222;
	width: 80px;
	height: 100px;
	display: inline-block;
	border-radius: 20px;
	float: left;
}

/* 	#sortable2 { list-style-type: none; margin: 0; padding: 0; width: 450px; } */
/* 	#sortable2 li { margin: 3px 3px 3px 0; padding: 1px; float: left; width: 100px; height: 90px; font-size: 4em; text-align: center; } */
</style>
<script>
	var runas;
	$(function() {
		$("#sortable1").sortable(
				{
					connectWith : ".ui-sortable",
					cursor : 'move',
					helper : function(e, li) {
						// 				alert("helper");
						copyHelper = li.clone().insertAfter(li);
						return li.clone();
					},
					stop : function() {
						copyHelper && copyHelper.remove();
					},
					//receive: This event is triggered when a
					//connected sortable list has received an item from another list.
					receive : function(event, ui) {
						var runa = runas[ui.item.attr("id")];
						var valorTipoRuna = $("#valores").find(
								"li#" + runa.tipo.idTipo);
						if (typeof (valorTipoRuna.html()) !== "undefined") {
							var valorAtual = valorTipoRuna.find("#valor"
									+ runa.tipo.idTipo);
							var somaValorTipoRuna = Number(valorAtual.html())
									- runa.valor;
							valorAtual.html(Number(somaValorTipoRuna.toFixed(2)));
							if (somaValorTipoRuna === 0) {
								$("#valores li#" + runa.tipo.idTipo).remove();
							}
						}
						ui.item.remove();
					}
				}).disableSelection();

		$("#sortable2")
				.sortable(
						{
							connectWith : ".ui-sortable",
							cursor : 'move',
							//receive: This event is triggered when a
							//connected sortable list has received an item from another list.
							receive : function(event, ui) {
								var runa = runas[ui.item.attr("id")];
								if ($("#sortable2 li").length <= 10) {
									copyHelper = null;
									var valorTipoRuna = $("#valores").find(
											"li#" + runa.tipo.idTipo);
									if (typeof (valorTipoRuna.html()) === "undefined") {
										$("#valores")
												.append(
														"<li style='list-style-type: none;' id='" + runa.tipo.idTipo+"'>+"
																+ "<span id='valor"+ runa.tipo.idTipo+"'>"
																+ runa.valor
																+ "</span> "
																+ " "
																+ runa.tipo.nome
																+ "</li>");
									} else {
										var valorAtual = valorTipoRuna
												.find("#valor"
														+ runa.tipo.idTipo);
										var somaValorTipoRuna = (typeof (valorAtual
												.html()) === "undefined" ? 0
												: Number(valorAtual.html()))
												+ runa.valor;
										valorAtual.html(Number(somaValorTipoRuna.toFixed(2)));
									}
								}
								// so if > 1
								if ($("#sortable2 li").length == 10) {
									copyHelper = null;
									alert("Parabéns, você acabou de terminar de preencher a lista [nome-lista]")
								} else if ($("#sortable2 li").length > 10) {
									//ui.sender: will cancel the change.
									//Useful in the 'receive' callback.
									$(ui.sender).sortable('cancel');
									alert("número máximo de itens atingido")
								}
							}
						}).disableSelection();
	});

	$(document).ready(function() {
		populaRunas();
	});

	function populaRunas() {
		var jqxhr = $
				.getJSON(
						"resources/json/runas.js",
						function(data) {
							runas = data.runas;
							$
									.each(
											runas,
											function(key, val) {
												$("#sortable1")
														.append(
																("<li title='"+val.tipo.descricao+"' id='" + key + "'><span><br />+"
																		+ val.valor
																		+ " "
																		+ val.tipo.nome
																		+ "</span><span style='float:left;height:48px; width:48px; background: url(\""
																		+ val.icone.url
																		+ "\") "
																		+ val.icone.posicao + " no-repeat;margin:4px;margin-left:15px;'></span></li>"));
											});
						});
	}
</script>
</head>
<body
	style="font-family: Arial, Verdana; background-color: #fff; float: left;color:#B22222;">
	<h1>Marcas</h1>
	<div style="width: 50%; float: left">
		<div style="width: auto; float: left;text-align:center;margin-bottom:10px;">
			<h2>Disponíveis</h2>
			<ul id="sortable1" class="ui-sortable">
			</ul>
		</div>
		<div
			style="width: auto; float: left; border: 2px solid #B22222; padding-left: 15px; text-align: center;">
			<h2>Selecionadas</h2>
			<ul id="sortable2" class="ui-sortable"
				style="font-family: Arial, Verdana; float: left;">
			</ul>
		</div>
	</div>
	<div style="width: 50%; float: left">
		<h2 id="teste">Bonus total:</h2>
		<ul id="valores">
		</ul>
	</div>
</body>
</html>
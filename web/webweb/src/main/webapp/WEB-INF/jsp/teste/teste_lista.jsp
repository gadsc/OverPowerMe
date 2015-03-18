<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="resources/js/jquery-1.11.2.min.js"></script>
<script src="resources/js/jquery-ui.js"></script>
<link rel="stylesheet"
	href="resources/css/jquery-ui.css" />
<link rel="stylesheet" href="resources/css/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>VRaptor Blank Project ${mensagem} }</title>
<style>
#sortable1, #sortable2 {
	border: 1px solid #eee;
	width: 142px;
	min-height: 20px;
	list-style-type: none;
	margin: 0;
	padding: 5px 0 0 0;
	float: left;
	margin-right: 10px;
}

#sortable1 li, #sortable2 li {
	margin: 0 5px 5px 5px;
	padding: 5px;
	font-size: 1.2em;
	width: 120px;
}
</style>
<script>
	$(function() {
		$("#sortable1, #sortable2").sortable({
			connectWith : ".connectedSortable"
		}).disableSelection();
	});
</script>
</head>
<body style="font-family: Arial, Verdana; background-color: #fff;">
	<ul id="sortable1" class="connectedSortable">
		<li class="ui-state-default">Item 1</li>
		<li class="ui-state-default">Item 2</li>
		<li class="ui-state-default">Item 3</li>
		<li class="ui-state-default">Item 4</li>
		<li class="ui-state-default">Item 5</li>
	</ul>

	<ul id="sortable2" class="connectedSortable">
		<li class="ui-state-highlight">Item 1</li>
		<li class="ui-state-highlight">Item 2</li>
		<li class="ui-state-highlight">Item 3</li>
		<li class="ui-state-highlight">Item 4</li>
		<li class="ui-state-highlight">Item 5</li>
	</ul>
</body>
</html>
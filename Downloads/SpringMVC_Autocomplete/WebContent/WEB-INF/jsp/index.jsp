<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
	<title>Spring MVC Autocomplete with JQuery &amp; JSON example</title>
	<style>
	body {
		font-family: Calibri;
	}
	table {
		border: 1px solid;
		border-collapse: collapse;
	}
	td {
		border: 1px solid;
	}
	th {
		text-align: left;
	}
	</style>
	<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" />

	<script type="text/javascript" 
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" 
		src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>

</head>
<body>

<table>
	
	<tr>
		<th>Country</th>
		<td><input id="country" /></td>
	</tr>
	
</table>	
<br />

<script type="text/javascript">
function split(val) {
    return val.split(/,\s*/);
}
function extractLast(term) {
    return split(term).pop();
}

$(document).ready(function() {

	$( "#country" ).autocomplete({
		source: '${pageContext. request. contextPath}/get_country_list.html'
	});
});
</script>

</body>
</html>

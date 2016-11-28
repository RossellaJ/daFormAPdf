<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>InserisciBustaPaga</title>

<!-- Bootstrap -->
<link href="css/bootstrap.min.css" rel="stylesheet">



<!-- Mio link css-->
<link rel="stylesheet"  href="cssMio/stile.css"/>

</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<div class="titolo-header" id="header">
					<div class="testoHeader">Alfasoft Form Busta Paga</div>
					<div class="row">
						<div class="col-md-10">
						<img width="650px" height="40px" src="images/imagesSea.jpg" class="img-rounded">
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-2"></div>
		</div>

		<div class="col-md-2"></div>
		<div class="col-md-6">
			<div id="content">
				<h1>Registrazione nuova Busta Paga</h1>

				<form role="form" action="doBustaPaga.jsp" method="post">
					<div class="form-group">
						<label>Nome</label> <input type="text" class="form-control"
							id="nome" name="nome" placeholder="Nome">
					</div>
					<div class="form-group">
						<label>Cognome</label> <input type="text" class="form-control"
							id="cognome" name="cognome" placeholder="Cognome">
					</div>
					</br>
					<div class="form-group">
						<label>Importo</label> <input type="text" class="form-control"
							id="importo" name="importo" placeholder="Importo Busta Paga">
					</div>
					<div class="form-group">
						<label>Data Emissione</label> <input type="text" class="form-control"
							id="dataEmissione" name="dataEmissione" placeholder="DataEmissione">
					</div>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					<br>
					
					

					
					<button type="submit" class="btn btn-default">Crea</button>
<!-- 					<a href="doBustaPaga" class="btn btn-primary btn-lg disabled" role="button">Crea PDF</a> -->
				</form>



			</div>
		</div>

		<div id="footer"></div>
<!-- 		jquery -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- jquery ui -->
<script	src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
		<!-- Include all compiled plugins (below), or include individual files as needed -->
		<!-- <script src="js/bootstrap.min.js"></script> -->
<!-- mio file js Funzione jquery -->
<script type="text/javascript" src="date.js"></script>
	</div>
</body>
</html>
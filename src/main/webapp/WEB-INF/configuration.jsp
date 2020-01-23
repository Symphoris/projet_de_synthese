<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="/tv/common/styleMain.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="icon" type="image/png" href="/tv/pictures/icon.png">
<script type="text/javascript" src="/tv/script/includeHTML.js"></script>
<script type="text/javascript" src="/tv/script/toggleMenu.js"></script>
<title>TrackVision</title>
</head>

<body>

	<div w3-include-html="/tv/common/${menu}.html"></div>

	<div style="padding-left: 16px">
		<br>
		${optionalMessage}
		<h3>Configurer un/des objet(s) connect�(s) : </h3>
		<div class="container">
		
			<form action="/tv/configuration" method="post">
			
			<h2>Configurer les baignoires connect�es : </h2>
			
				<div class="row">
					<div class="col-25">
						<label for="niveauEau">Niveau d'eau maximum :</label>
					</div>
					<div class="col-75">
						<input type="number" id="niveauEau" name="niveauEau"
							placeholder="Niveau d'eau maximum..">
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="degr�Temperature">Degr� de temp�rature maximum :</label>
					</div>
					<div class="col-75">
						<input type="number" id="degr�Temperature" name="degr�Temperature"
							placeholder="Degr� de temp�rature maximum..">
					</div>
				</div>
				
				<h2>Configurer les ampoules connect�es : </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Dur�e d'activit� maximale:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="Dur�e d'activit� maximale..">
					</div>
				</div>
				<div class="row">
					<div class="col-25">
						<label for="degreluminosite">Degr� de luminosit� maximal:</label>
					</div>
					<div class="col-75">
						<input type="number" id="degreluminosite" name="degreluminosite"
							placeholder="Degr� de luminosit� maximal..">
					</div>
				</div>
				
				<h2>Configurer les stores connect�s  : </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="dureeOuvertmax">Dur�e d'ouverture maximale:</label>
					</div>
					<div class="col-75">
						<input type="number" id="dureeOuvertmax" name="dureeOuvertmax"
							placeholder="Dur�e d'ouverture maximale..">
					</div>
				</div>
				
				
				<h2>Configurer les fours connect�s : </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="dureMaxAct">Dur�e d'activit� maximale:</label>
					</div>
					<div class="col-75">
						<input type="number" id="dureMaxAct" name="dureMaxAct"
							placeholder="Dur�e d'activit� maximale:..">
					</div>
				</div>
				
				<div>
				
				<div class="row">
					<input type="submit" value="Configurer">
				</div>
				</div>
			</form>
		</div>
	</div>

	<div w3-include-html="/tv/common/footer.html"></div>

	<script>includeHTML();</script>

</body>

</html>

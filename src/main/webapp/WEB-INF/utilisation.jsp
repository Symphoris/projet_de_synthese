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
		<h3>Manipuler  mes objets connect�s : </h3>
		<div class="container">
		
			<form action="/tv/utilisation" method="post">
			
			<h2>Manipuler ma baignoire connect�e : </h2>
			
				<div class="row">
					<div class="col-25">
						<label for="niveauEau">Niveau d'eau de la baignoire:</label>
					</div>
					<div class="col-75">
						<input type="number" id="niveauEau" name="niveauEau"
							placeholder="Niveau d'eau..">
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="degr�Temperature">Temp�rature de l'eau :</label>
					</div>
					<div class="col-75">
						<input type="number" id="degr�Temperature" name="degr�Temperature"
							placeholder="Degr� de temp�rature..">
					</div>
				</div>
				
				<h2>Manipuler mes ampoules connect�es: </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Eteindre/Allumer mes ampoules connect�es:</label>
					</div>
					<div class="col-75">
						<input type="text" id="actMax" name="actMax"
							placeholder="ON/OFF..">
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Degr� de luminosit�:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="Degr� de luminosit�..">
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Dur�e d'activit�:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="Dur�e d'activit�..">
					</div>
				</div>
				
				
				<h2>Manipuler mes stores connect�s: </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Ouvrir/Fermer mes stores connect�s:</label>
					</div>
					<div class="col-75">
						<input type="text" id="actMax" name="actMax"
							placeholder="YES/NO..">
					</div>
				</div>
				
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Dur�e d'ouverture:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="Dur�e d'ouverture..">
					</div>
				</div>
				
				
				
				<h2>Manipuler les fours connect�s : </h2>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Eteindre/Allumer mes plaques:</label>
					</div>
					<div class="col-75">
						<input type="text" id="actMax" name="actMax"
							placeholder="ON/OFF..">
					</div>
				</div>
				
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Dur�e d'activit�:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="Dur�e d'activit�..">
					</div>
				</div>
				
				<div class="row">
					<div class="col-25">
						<label for="actMax">Temp�rature des plaques de cuisson:</label>
					</div>
					<div class="col-75">
						<input type="number" id="actMax" name="actMax"
							placeholder="temp�rature des plaques">
					</div>
				</div>
				
				
				
				<div class="row">
					<input type="submit" value="Submit">
				</div>
				</div>
			</form>
		</div>
	</div>

	<div w3-include-html="/tv/common/footer.html"></div>

	<script>includeHTML();</script>

</body>

</html>

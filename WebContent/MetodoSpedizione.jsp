<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
* {
	box-sizing: border-box;
}

body {
	font-family: Arial;
	padding: 10px;
	background: #f1f1f1;
}
#pulsantee {
outline: none;
cursor: pointer;
text-align: center;
text-decoration: none;
font: bold 20px Arial, Helvetica, sans-serif;
color: white;
padding: 10px 20px;
border: solid 1px #333;
background: #333;
}
#pulsante {
	outline: none;
	cursor: pointer;
	text-align: center;
	text-decoration: none;
	font: bold 12px Arial, Helvetica, sans-serif;
	color: #800000;
	padding: 10px 20px;
	border: solid 1px #0076a3;
	background: white;
}

/* Header/Blog Title */
.header {
	padding: 30px;
	text-align: center;
	background: white;
}

.logo {
	float: left;
	width: 2%;
	background-color: #f1f1f1;
	padding-left: 5px;
	margin-top: 9px;
}

.header h1 {
	font-size: 50px;
}

/* Style the top navigation bar */
.topnav {
	overflow: hidden;
	background-color: #333;
}

/* Style the topnav links */
.topnav a {
	float: left;
	display: block;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

/* Change color on hover */
.topnav a:hover {
	background-color: #ddd;
	color: black;
}

/* Create two unequal columns that floats next to each other */
/* Left column */
.leftcolumn {
	float: left;
	width: 75%;
}

/* Right column */
.rightcolumn {
	float: left;
	width: 25%;
	background-color: #f1f1f1;
	padding-left: 20px;
}

/* Fake image */
.img {
	background-color: white;
	width: 100%;
	padding: -9px;
	align: center;
}

/* Add a card effect for articles */
.card {
	background-color: white;
	padding: 60px;
	margin-top: 40px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* Footer */
.footer {
	padding: 20px;
	text-align: center;
	background: #ddd;
	margin-top: 20px;
}
@media only screen and (max-width: 600px) {
	.leftcolumn, .rightcolumn {
		width: 100%;
		padding: 0;
		display: block;
	}
	.topnav a {
		float: none;
		width: 100%;
		display: block;
	}
	.logo {
		width: 80%;
		display: block;
	}
}
</style>
</head>
<body>

	<div class="header">
		<div class="logo">
			<div class="img">
				<a title="Clicca per andare alla home" href="HomePage.jsp"><img src="images/logo.png" alt="logo" style="height: 120px; "></a>
			</div>
		</div>
		<h1>
			<b Style="color: #800000">I Sapori Del Sud Tra Terra e Mare</b>
		</h1>
		<p Style="color: #800000">Sito di e-commerce incentrato sulle
			specialita' gastronomiche del sud Italia.</p>
	</div>

	<div class="topnav">
	
	 <div class="topnav" style="float: left;">

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">HomePage</button>
				<input type="hidden" name="home" value="home">
			</form>
		</div>
		<div class="topnav" style="float: left;">

			<form action="ServletHomePage" method="get">

				<button id="pulsantee" type="submit">Catalogo</button>
				<input type="hidden" name="home" value="catal">

			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Chi Siamo</button>
				<input type="hidden" name="home" value="chisiamo">
			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Contatti</button>
				<input type="hidden" name="home" value="contatti">
			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="ServletHomePage" method="get">
				<button id="pulsantee" type="submit">Recensioni</button>
				<input type="hidden" name="home" value="recensione">
			</form>
		</div>


		<%
			if (request.getSession().getAttribute("utente") != null) {
		%>
		<div class="topnav" style="float: left;">&emsp; &emsp; &emsp;

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp;
			 &emsp; &emsp; &emsp; &emsp; &emsp;  &emsp; &emsp; 
			 
			
		</div>
		<div class="topnav" style="float: left;">
			<form action="LoginServlet" method="post">
				<button id="pulsantee" type="submit">Logout</button>
				<input type="hidden" name="azione" value="autentico">
			</form>
		</div>
		<%
			} else {
		%>
		<div class="topnav" style="float: left;">&emsp; &emsp; &emsp;

			&emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp; &emsp;&emsp;
		</div>

		<div class="topnav" style="float: left;">

			<form action="LoginServlet" method="get">
				<button id="pulsantee" type="submit">Login</button>
			</form>
		</div>
		<div class="topnav" style="float: left;">
			<form action="RegistrazioneServlet" method="get">
				<button id="pulsantee" type="submit">Registrazione</button>
			</form>
		</div>

		<%
			}
		%>
	 
	</div>

	<div class="row">
		<div class="leftcolumn">
			<div class="card">
				<h1 Style="color: #800000" align="center">Tempi di Spedizione:</h1>
				<h4 align="center">
					
					La merce e' sempre pronta per la spedizione nei nostri magazzini, i
					tempi medi di lavorazione dell'ordine � sono 1-3 giorni lavorativi,
					i tempi possono variare a seconda dei periodi ed al volume degli
					ordini (es: black friday, Natale, particolari promozioni da parte
					nostra) in questo caso i tempi possono essere pi� lunghi.

					Utilizziamo corriere espresso NEXIVE e GLS, i tempi di spedizione
					variano dalle 24 alle 72 ore (salvo ritardi). I costi di spedizione sono gratuiti

				</h4>
				</div>
				<div class="card">
				<h1 Style="color: #800000" align="center">Metodi di pagamento:</h1>
				<div class="img">
				<p align="center">
						<img src="images/mastercard.png"  align="center" style="height: 50px;"> 
						<img src="images/visa.png"  align="center"  style="height: 50px;">
						</p>
</div>
			</div>
		</div>
		<div class="rightcolumn">
			<div class="card">
				<h2 Style="color: #800000">Gestisci</h2>

				<button onclick="location.href='mioprofilo.jsp'" id="pulsante"
					type="submit">Vai al mio profilo</button>
				<br> <br>

				<button onclick="location.href='mioordini.jsp'" id="pulsante"
					type="submit">I miei ordini</button>
				<br> <br>
			</div>
		</div>
	</div>

	<div class="footer">
		<h2 Style="color: #800000">Hai bisogno di aiuto ?</h2>
		<form action="ServletHomePage" method="get">
		<button id="pulsantee"
					type="submit">Pagamenti e metodi di Spedizione</button>
            	 <input type="hidden" name="home" value="pagmet"><br><br>
            	 </form>
            	 <form action="ServletHomePage" method="get">
		 <button id="pulsantee"
					type="submit">Chi Siamo</button>
            	 <input type="hidden" name="home" value="chisiamo"><br><br>
            	 </form>
            	 <form action="ServletHomePage" method="get">
            	  <button id="pulsantee"
					type="submit">Contatti</button>
            	 <input type="hidden" name="home" value="contatti">
			      </form>
	</div>

</body>
</html>
    
<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <style>
          body {
            background-color: gray;
            font-family: Comic Sans MS;
          }

          h1 {
            text-align: center;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 72px;
            color: gold;
            text-shadow: 5px 5px 15px black;
            cursor: pointer;
          }

          .cards {
            display: flex;
            flex-direction: column;
            align-items: center;
          }

          .card {
            width: 800px;
            border: 3px solid gold;
            background-color: #eee;
            border-radius: 5%;
            margin: 20px;
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.6);
            transform-style: preserve-3d;
            perspective: 1000px;
          }

          .card:hover {
            transform: scale(1.1);
          }

          .card[data-sexo="H"] {
            background-color: lightblue;
          }

          .card[data-sexo="M"] {
            background-color: lightpink;
          }

          .card-inner {
            display: flex;
          }

          .card-img {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 50%;
            height: 50%;           
          }

          .card-img img {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 100px; 
            height: 100px; 
            padding: 30%; 
            margin: 5%;           
            cursor: pointer;
          }

          .card-data {
            width: 70%;
            padding: 20px; 
            margin: 5;           
            border: 3px solid white;            
            border-radius: 10%;
            font-size: 20px;
          }

          .card-data strong {
            display: row;
            margin-bottom: 5px;
          }

          p {
            font-family: 'Lucida Calligraphy', 'Times New Roman', Times, serif;
            font-size: 30px;
            font-weight: bold;
            color: green;            
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            text-transform: uppercase;
            text-align: center;
            margin-bottom: 10px;
            border-radius: 20%;
          }
          .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
          }
          .btn {
            background-color: #4CAF50;
            border: none;
            color: white;
            text-align: center;
            display: inline-block;
            font-size: 20px;
            margin: 20px 2px;
            cursor: pointer;
            border-radius: 12px;
            box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
            padding: 10px 24px;
            text-decoration: none;
            transition-duration: 0.4s;
          }

          .btn:hover {
            background-color: #45a049;
            box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24), 0 17px 50px 0 rgba(0,0,0,0.19);
          }
        </style>
        <script>
          function showAuthor() {
            alert('Actividad 3 M4\nAutor: Enrique Jesús Solís González');
          }
        </script>

      </head>      
      <body>
        <h1 onmouseover="showAuthor()">Fichas de antihéroes</h1>
        <div class="cards">
          <xsl:apply-templates select="antiheroes/antiheroe">
            <xsl:sort select="poder"/>
            <xsl:sort select="nombre"/>
          </xsl:apply-templates>
        </div>
        <script>
          <![CDATA[
          function backToMain() {
            window.parent.location.href = "antiheroes.xml?stylesheet=antiheroes.xsl";
          }
        ]]>
        </script>
        <div class="button-container">
          <button class="btn" onclick="backToMain()">Ver tabla antiheroes</button>
          <button class="btn" onclick="parent.showWindow('antiheroes2.xml', 'antiheroes2.xsl')">Ver fichas individuales de antiheroes</button>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="antiheroe">
    <div class="card" data-sexo="{sexo}">
      <div class="card-inner">
        <div class="card-img">
          <img src="{foto}" alt="{nombre}" onclick="this.style.transform = this.style.transform === 'scale(2)' ? 'none' : 'scale(2)'" />
        </div>
        <div class="card-data">
          <p><xsl:value-of select="nombre"/><br/></p>
          <strong>Nombre: </strong> <xsl:value-of select="nombre"/><br/>
          <strong>Código: </strong> <xsl:value-of select="codigo"/><br/>
          <strong>Sexo: </strong> <xsl:value-of select="sexo"/><br/>
          <strong>Poder: </strong> <xsl:value-of select="poder"/><br/>
          <strong>Fuerza: </strong> <xsl:value-of select="fuerza"/><br/>
          <strong>Comentario: </strong> <xsl:value-of select="comentario"/>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
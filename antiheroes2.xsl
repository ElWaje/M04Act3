<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8"/>

  <xsl:template match="/">
    <html>
      <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
            justify-content: center;
            height: 100%;
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
            transform: scale(1.3);
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
            margin-top: 50px;
            margin-left: 20px;        
            cursor: pointer;
            transition: transform 0.3s;
          }
          
          .card-img img:hover {
            transform: scale(2.1);
          }

          .card-img img.normal {
            width: 100px;
            height: 100px;
            cursor: pointer;
            transition: transform 0.3s;
          }

          .card-img img.normal:hover {
            transform: scale(2.1);
          }

          .card-img img.expanded {
            width: 110px;
            height: 110px;
            cursor: pointer;
            transition: transform 0.3s;
          }

          .card-data {
            width: 70%;
            padding: 20px; 
            margin: 5;           
            border: 3px solid white;            
            border-radius: 10%;
            font-size: 20px;
            display: flex;
            flex-direction: column;
          }

          .antihero-name {
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

          .card-data strong {
            display: row;
            margin-bottom: 5px;
          }

          p {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 30px;
            font-weight: bold;
            color: green;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            border-radius: 20%;
          }

          .story-container {
            width: 100%;
            padding: 20px;
            box-sizing: border-box;
          }

          .story-title {
            font-size: 24px;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
            color: green;
          }

          .story {
            font-size: 18px;
            line-height: 1.5;
            text-align: justify;
            text-justify: inter-word;
            margin-left: 10px;
            margin-right: 10px;
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

          .container {
            display: flex;
            justify-content: flex-start;
            padding-left: 20px;
          }

          .list {
            display: flex;
            flex-direction: column;
            padding: 20px;
            margin-right: 250px;
          }

          .list-item {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
            cursor: pointer;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-weight: bold;
            color: navy;
            text-shadow: 2px 2px 6px rgba(0, 0, 0, 0.3);
            box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.6);
            border: 2px solid white;
            border-radius: 5px;
            padding: 5px;
          }

          .list-item[data-sexo="H"] {
            background-color: lightblue;
          }

          .list-item[data-sexo="M"] {
            background-color: lightpink;
          }

          .list-item img {
            margin-right: 10px;
          }
        </style>
        <script>
        <![CDATA[
          function backToMain() {
            window.parent.location.href = "antiheroes.xml?stylesheet=antiheroes.xsl";
          }
        ]]>
          function showAuthor() {
            alert('Actividad 3 M4\nAutor: Enrique Jesús Solís González');
          }          
          function showCard(codigo) {
            $('.card').each(function () {
              if ($(this).data('codigo') === codigo) {
                $(this).show();
              } else {
                $(this).hide();
              }
            });
          }    
          function toggleImageSize(img) {
            if ($(img).hasClass("normal")) {
              $(img).removeClass("normal");
              $(img).addClass("expanded");
            } else {
              $(img).removeClass("expanded");
              $(img).addClass("normal");
            }
          }
          $(document).ready(function() {
            var imgZoomed = false;
            $(".card-img img").on("click", function() {
              if (imgZoomed) {
                $(this).css("transform", "scale(1)");
              } else {
                $(this).css("transform", "scale(2.9)");
              }
              imgZoomed = !imgZoomed;
            });
          });              
        </script>
      </head>           
      <body>
        <h1 onmouseover="showAuthor()">Fichas de antihéroes</h1>
        <div class="container">
          <div class="list">
            <xsl:apply-templates select="antiheroes/antiheroe">
              <xsl:sort select="poder"/>
              <xsl:sort select="nombre"/>
            </xsl:apply-templates>
          </div>
          <div class="cards">
            <xsl:for-each select="antiheroes/antiheroe">
              <xsl:call-template name="createCard">
                <xsl:with-param name="antiheroe" select="."/>
              </xsl:call-template>
            </xsl:for-each>
          </div>
        </div>
        <div class="button-container">  
          <button class="btn" onclick="parent.showWindow('antiheroes1.xml', 'antiheroes1.xsl')">Ver todas las fichas de antiheroes</button>
          <button class="btn" onclick="backToMain()">Ver tabla de antiheroes</button>          
          <button class="btn" onclick="parent.showWindow('resultados.xml', 'resultados.xsl')">Ver resultado de consultas XQuery</button>
        </div>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="antiheroes/antiheroe">
    <div class="list-item" data-sexo="{sexo}" onclick="showCard('{codigo}')">
      <img src="{foto}" alt="{nombre}" height="50" width="50"/>
      <xsl:value-of select="nombre"/>
    </div>
  </xsl:template>

  <xsl:template name="createCard">
    <xsl:param name="antiheroe"/>
    <div class="card" data-codigo="{$antiheroe/codigo}" data-sexo="{$antiheroe/sexo}" style="display:none">
      <div class="card-inner">
        <div class="card-img">
          <img class="normal" src="{$antiheroe/foto}" alt="{$antiheroe/nombre}" height="100" width="100" onclick="toggleImageSize(this)"/>
        </div>
        <div class="card-data">
          <div class="antihero-name">
            <xsl:value-of select="$antiheroe/nombre"/>
          </div>
          <strong>Nombre:</strong> <xsl:value-of select="$antiheroe/nombre"/><br/>
          <strong>Sexo:</strong> <xsl:value-of select="$antiheroe/sexo"/><br/>
          <strong>Código:</strong> <xsl:value-of select="$antiheroe/codigo"/><br/>
          <strong>Poder:</strong> <xsl:value-of select="$antiheroe/poder"/><br/>
          <strong>Comentario:</strong> <xsl:value-of select="$antiheroe/comentario"/><br/>
        </div>
      </div>
      <div class="story-container">
        <div class="story-title">Historia de <xsl:value-of select="$antiheroe/nombre"/>:</div>
        <div class="story">
          <xsl:value-of select="$antiheroe/historia"/>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>
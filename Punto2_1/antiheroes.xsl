<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Lista de antihéroes</title>
        <style>
          .Transformación { background-color: #ffd700; }
          .Agilidad { background-color: #ff69b4; }
          .Invisibilidad { background-color: #00bfff; }
          .Regeneración { background-color: #ff8c00; }
          .Volar { background-color:  #00ff00; }
          body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            width: 100%;
          }
          #contentFrame {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            border: none;
          }
          table {
            font-family: Comic Sans MS;
            border-collapse: collapse;
          }
          th {
            background-color: black;
            color: white;
            font-family: Comic Sans MS;
            font-size: 24px;
            padding: 10px;
            text-transform: uppercase;
            letter-spacing: 2px;
            text-shadow: 2px 2px 6px rgba(0,0,0,0.3);
            border: 2px solid black;
            border-collapse: separate;
            border-radius: 8px;
            box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
          }
          td {
            text-align: center;
            color: #1a237e;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            padding: 10px;
            font-size: 18px;
            font-weight: bold;
            transition: all 0.3s ease-in-out;
            border: 2px solid black;
            border-collapse: separate;
            border-radius: 8px;
            box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
          }
          img {
            height: 100px;
            width: 100px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid black;
            transition: all 0.3s ease-in-out;
          }
          td:hover img {
            height: 150px;
            border-radius: 20%;
          }
          td:hover {
            background-color: #f2f2f2;
            transition: all 0.3s ease-in-out;
            color: #006400;
            font-size: 20px;
            font-weight: bolder;
            font-family: Impact, Charcoal, sans-serif;
          }
          h1 {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 48px;
            text-align: center;
            color: #ffd700;
            text-shadow: 5px 5px 15px rgba(0,0,0,0.6);
            letter-spacing: 2px;
            text-transform: uppercase;
            text-stroke: 2px black;
            -webkit-text-stroke: 2px black;
            -moz-text-stroke: 2px black;
            -o-text-stroke: 2px black;
            background-color: #eee;
            padding: 10px;
            box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
          }  
          .title-hover:hover::after {
            content: attr(title);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 48px;
            text-align: center;
            color: #ffd700;
            text-shadow: 2px 2px 6px rgba(0,0,0,0.3);
            letter-spacing: 2px;
            text-transform: uppercase;
            text-stroke: 2px black;
            -webkit-text-stroke: 2px black;
            -moz-text-stroke: 2px black;
            -o-text-stroke: 2px black;
            background-color: #eee;
            padding: 10px;
            border-radius: 8px;
            border: 2px solid black;
            box-shadow: 5px 5px 15px rgba(0,0,0,0.6);
            position: absolute;
            z-index: 1;
            width: 300px;
            top: 100%;
            left: 50%;
            transform: translate(-50%, 10px);
            transition: all 0.3s ease-in-out;
          }
          .button-container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            margin-bottom: 20px;
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
      </head>
      <body align="center" background-color= "#f2f2f2">
        <h1 onmouseover="showAuthor()">Fichas de antihéroes</h1>
        <table border="1" align="center">
          <tr>
            <th>Nombre</th>
            <th>Poder</th>
            <th>Foto</th>
          </tr>
          <xsl:for-each select="//antiheroe">
            <xsl:sort select="poder" />
            <tr class="{poder}">
              <td><b><xsl:value-of select="nombre"/></b></td>
              <td><xsl:value-of select="poder"/></td>
              <td><img src="{foto}"/></td>
            </tr>
          </xsl:for-each>
        </table>
        <script>  
        <![CDATA[                          
          function showWindow(xmlUrl, xslUrl) {
            var iframe = document.getElementById("contentFrame");
            iframe.src = xmlUrl + "?stylesheet=" + xslUrl;
            iframe.style.display = "block";
          }  
          function showAuthor() {
            alert('Actividad 3 M4\nAutor: Enrique Jesús Solís González');
          }          
          function closeWindow() {
            alert("Gracias por visitarnos");
            setTimeout(function() {
              window.close();
            }, 3000);
          }            
        ]]>  
        </script>
        <div class="button-container">
          <button class="btn" onclick="showWindow('antiheroes2.xml', 'antiheroes2.xsl')">Ver fichas individuales de antihéroes</button>
          <button class="btn" onclick="closeWindow()">Salir</button>
          <button class="btn" onclick="showWindow('antiheroes1.xml', 'antiheroes1.xsl')">Ver todas las fichas de antihéroes</button>
        </div>
        <iframe id="contentFrame" style="display:none;"></iframe>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
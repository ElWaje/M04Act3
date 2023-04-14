<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>
  <!-- Plantilla para el elemento resultados -->
    <xsl:template match="resultados">
        <html>
        <head>
            <title>Resultados de las consultas XQuery</title>
            <style>
                body {
                font-family: Arial, sans-serif;
                margin: 20px;
                background-color: #f0f0f0;
                }
                h1 {
                color: #333;
                border-bottom: 2px solid #333;
                padding-bottom: 10px;
                margin-bottom: 20px;
                }
                table {
                border-collapse: collapse;
                width: 100%;
                background-color: #ffffff;
                box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
                }
                th, td {
                border: 1px solid #ccc;
                padding: 8px;
                text-align: left;
                }
                th {
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
                }
                tr:nth-child(even) {
                background-color: #f2f2f2;
                }
                tr:hover {
                background-color: #ddd;
                }
            </style>
        </head>
        <body>
            <h1>Resultados de las consultas XQuery</h1>
            <!-- Aplicar plantilla a consulta1_1 -->
            <xsl:apply-templates select="consulta1_1"/>
            <hr/>
            <!-- Aplicar plantilla a consulta1_2 -->
            <xsl:apply-templates select="consulta1_2"/>
            <hr/>
            <!-- Aplicar plantilla a consulta2 -->
            <xsl:apply-templates select="consulta2"/>
            <hr/>
            <!-- Aplicar plantilla a consulta3_1 -->
            <xsl:apply-templates select="consulta3_1"/>
            <hr/>
            <!-- Aplicar plantilla a consulta3_2 -->
            <xsl:apply-templates select="consulta3_2"/>
            <hr/>
            <!-- Aplicar plantilla a consulta4_1 -->
            <xsl:apply-templates select="consulta4_1"/>
            <hr/>
            <!-- Aplicar plantilla a consulta4_2 -->
            <xsl:apply-templates select="consulta4_2"/>
            <hr/>
            <!-- Aplicar plantilla a consulta5_1 -->
            <xsl:apply-templates select="consulta5_1"/>
            <hr/>
            <!-- Aplicar plantilla a consulta5_2 -->
            <xsl:apply-templates select="consulta5_2"/>
            <hr/>
            <!-- Aplicar plantilla a consulta6 -->
            <xsl:apply-templates select="consulta6"/>
            <hr/>
            <!-- Aplicar plantilla a consulta7 -->
            <xsl:apply-templates select="consulta7"/>
            <hr/>
            <!-- Aplicar plantilla a consulta8 -->
            <xsl:apply-templates select="consulta8"/>
            <hr/>
            <!-- Aplicar plantilla a consulta9 -->
            <xsl:apply-templates select="consulta9"/>
            <hr/>
            <!-- Aplicar plantilla a consulta10_1 -->
            <xsl:apply-templates select="consulta10_1"/>
            <hr/>
            <!-- Aplicar plantilla a consulta10_2 -->
            <xsl:apply-templates select="consulta10_2"/>
        </body>
        </html>
    </xsl:template>

  <!-- Plantillas para elementos consulta3_1, consulta3_2, consulta4_1, consulta4_2, consulta5_1, consulta5_2, consulta6, consulta7, consulta8, consulta9, consulta10_1 y consulta10_2 -->
    <!-- Plantilla para el elemento consulta3_1 -->
    <xsl:template match="consulta3_1">
        <h2>Consulta 3_1 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Código</th>
                <th>Foto</th>
                <th>Sexo</th>
                <th>Poder</th>
                <th>Fuerza</th>
                <th>Comentario</th>
            </tr>
            <xsl:for-each select="antiheroes/antiheroe">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="codigo"/></td>
                    <td><img src="{foto}"/></td>
                    <td><xsl:value-of select="sexo"/></td>
                    <td><xsl:value-of select="poder"/></td>
                    <td><xsl:value-of select="fuerza"/></td>
                    <td><xsl:value-of select="comentario"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta3_2 -->
    <xsl:template match="consulta3_2">
        <h2>Consulta 3_2 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="result">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta4_1 -->
    <xsl:template match="consulta4_1">
        <h2>Consulta 4_1 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Código</th>
                <th>Foto</th>
                <th>Sexo</th>
                <th>Poder</th>
                <th>Fuerza</th>
                <th>Comentario</th>
            </tr>
            <xsl:for-each select="antiheroes/antiheroe">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="codigo"/></td>
                    <td><img src="{foto}"/></td>
                    <td><xsl:value-of select="sexo"/></td>
                    <td><xsl:value-of select="poder"/></td>
                    <td><xsl:value-of select="format-number(fuerza * 1.1, '0.0')"/></td>
                    <td><xsl:value-of select="comentario"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta4_2 -->
    <xsl:template match="consulta4_2">
        <h2>Consulta 4_2 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="result">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta5_1 -->
    <xsl:template match="consulta5_1">
        <h2>Consulta 5_1 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#CCCCCC">
                <th>Nombre</th>
                <th>Código</th>
                <th>Foto</th>
                <th>Sexo</th>
                <th>Poder</th>
                <th>Fuerza</th>
                <th>Comentario</th>
            </tr>
            <xsl:for-each select="antiheroes/antiheroe">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="codigo"/></td>
                    <td><img src="{foto}"/></td>
                    <td><xsl:value-of select="sexo"/></td>
                    <td><xsl:value-of select="poder"/></td>
                    <td><xsl:value-of select="fuerza"/></td>
                    <td><xsl:value-of select="comentario"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta5_2 -->
    <xsl:template match="consulta5_2">
        <h2>Consulta 5_2 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="result">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta6 -->
    <xsl:template match="consulta6">
        <h2>Consulta 6 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="nombre">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta7 -->
    <xsl:template match="consulta7">
        <h2>Consulta 7 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="nombre">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta8 -->
    <xsl:template match="consulta8">
        <h2>Consulta 8 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Poder</th>
                <th>Fuerza</th>
            </tr>
            <xsl:for-each select="result">
                <tr>
                    <td><xsl:value-of select="nombre"/></td>
                    <td><xsl:value-of select="poder"/></td>
                    <td><xsl:value-of select="fuerza"/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta9 -->
    <xsl:template match="consulta9">
        <h2>Consulta 9 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Poder</th>
                    <th>Fuerza</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="table/tbody/tr">
                    <tr>
                        <td><xsl:value-of select="td[1]" /></td>
                        <td><xsl:value-of select="td[2]" /></td>
                        <td><xsl:value-of select="td[3]" /></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta10_1 -->
    <xsl:template match="consulta10_1">
        <h2>Consulta 10_1 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table>
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Código</th>
                    <th>Poder</th>
                    <th>Fuerza</th>
                    <th>Comentario</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="antiheroes/antiheroe">
                    <tr>
                        <td><xsl:value-of select="nombre"/></td>
                        <td><xsl:value-of select="codigo"/></td>
                        <td><xsl:value-of select="poder"/></td>
                        <td><xsl:value-of select="fuerza"/></td>
                        <td><xsl:value-of select="comentario"/></td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
    </xsl:template>
    <!-- Plantilla para el elemento consulta10_2 -->
    <xsl:template match="consulta10_2">
        <h2>Consulta 10_2- Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr bgcolor="#9acd32">
                <th>Resultado</th>
            </tr>
            <xsl:for-each select="result">
                <tr>
                    <td><xsl:value-of select="."/></td>
                </tr>
            </xsl:for-each>
        </table>
    </xsl:template>

  <!-- Agrega las plantillas correspondientes aquí, similar a las plantillas para consulta1_1, consulta1_2 y consulta2 -->
   <!-- Plantilla para el elemento consulta1_1 -->   
    <xsl:template match="consulta1_1">
        <h2>Consulta 1_1 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Código</th>
                <th>Foto</th>
                <th>Sexo</th>
                <th>Poder</th>
                <th>Fuerza</th>
                <th>Comentario</th>
            </tr>
            <!-- Aplicar plantilla a cada elemento antiheroe -->
            <xsl:apply-templates select="antiheroe"/>
        </table>
    </xsl:template>

    <!-- Plantilla para el elemento antiheroe -->
    <xsl:template match="antiheroe">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="codigo"/></td>
            <td><img src="{foto}" width="100" height="100"/></td>
            <td><xsl:value-of select="sexo"/></td>
            <td><xsl:value-of select="poder"/></td>
            <td><xsl:value-of select="fuerza"/></td>
            <td><xsl:value-of select="comentario"/></td>
        </tr>
    </xsl:template>
    <!-- Plantilla para el elemento consulta1_2 -->   
    <xsl:template match="consulta1_2">
        <h2>Consulta 1_2 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Código</th>
                <th>Foto</th>
                <th>Sexo</th>
                <th>Poder</th>
                <th>Fuerza</th>
                <th>Comentario</th>
            </tr>
            <!-- Aplicar plantilla a cada elemento antiheroe -->
            <xsl:apply-templates select="antiheroe"/>
        </table>
    </xsl:template>

    <!-- Plantilla para el elemento antiheroe -->
    <xsl:template match="antiheroe">
        <tr>
            <td><xsl:value-of select="nombre"/></td>
            <td><xsl:value-of select="codigo"/></td>
            <td><img src="{foto}" width="100" height="100"/></td>
            <td><xsl:value-of select="sexo"/></td>
            <td><xsl:value-of select="poder"/></td>
            <td><xsl:value-of select="fuerza"/></td>
            <td><xsl:value-of select="comentario"/></td>
        </tr>
    </xsl:template>
    <!-- Plantilla para el elemento consulta2 -->
    <xsl:template match="consulta2">
        <h2>Consulta 2 - Descripción</h2>
        <p><xsl:value-of select="descripcion"/></p>
        <h3>Código XQuery:</h3>
        <pre><xsl:value-of select="codigo_xquery"/></pre>
        <h2>Resultado: </h2>
        <table border="1">
            <tr>
                <th>Nombre</th>
                <th>Poder</th>
                <th>Fuerza</th>
            </tr>
            <!-- Aplicar plantilla a cada elemento tr -->
            <xsl:apply-templates select="tr"/>
        </table>
    </xsl:template>

    <!-- Plantilla para el elemento tr -->
    <xsl:template match="tr">
        <tr>
            <td><xsl:value-of select="td[1]"/></td>
            <td><xsl:value-of select="td[2]"/></td>
            <td><xsl:value-of select="td[3]"/></td>
        </tr>
    </xsl:template>
</xsl:stylesheet>
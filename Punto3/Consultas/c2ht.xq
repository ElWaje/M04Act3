let $doc := doc("antiheroes.xml")
let $antiheroes := $doc/antiheroes/antiheroe
let $sorted-antiheroes := for $a in $antiheroes order by $a/nombre return $a

return
  <html>
    <head>
      <title>Tabla de antihéroes</title>
      <style><![CDATA[
        table, th, td {
          border: 1px solid black;
          border-collapse: collapse;
          padding: 5px;
        }
      ]]></style>
    </head>
    <body>
      <table>
        <thead>
          <tr>
            <th>Nombre</th>
            <th>Poder</th>
            <th>Fuerza</th>
          </tr>
        </thead>
        <tbody>
          {
            for $antiheroe in $sorted-antiheroes
            return
              <tr>
                <td>{$antiheroe/nombre}</td>
                <td>{$antiheroe/poder}</td>
                <td>{$antiheroe/fuerza}</td>
              </tr>
          }
        </tbody>
      </table>
    </body>
  </html>
let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
return
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
        for $antiheroe in $antiheroes
        return
          <tr>
            <td>{ $antiheroe/nombre/text() }</td>
            <td>{ $antiheroe/poder/text() }</td>
            <td>{ $antiheroe/fuerza/text() }</td>
          </tr>
      }
    </tbody>
  </table>
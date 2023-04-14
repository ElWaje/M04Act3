let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
for $antiheroe in $antiheroes
order by $antiheroe/poder
return
  <tr>
    <td>{$antiheroe/nombre/text()}</td>
    <td>{$antiheroe/poder/text()}</td>
    <td>{$antiheroe/fuerza/text()}</td>
  </tr>
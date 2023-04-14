let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
for $antiheroe in $antiheroes
return
  <result>
    <nombre>{ $antiheroe/nombre/text() }</nombre>
    <poder>{ $antiheroe/poder/text() }</poder>
    <fuerza>{ $antiheroe/fuerza * 0.95 }</fuerza>
  </result>
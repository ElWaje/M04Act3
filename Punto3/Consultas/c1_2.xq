let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
let $avg_fuerza := avg($antiheroes/fuerza)
for $antiheroe in $antiheroes
where $antiheroe/fuerza > $avg_fuerza
return $antiheroe
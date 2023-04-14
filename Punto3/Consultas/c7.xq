let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
let $min_fuerza := min($antiheroes/fuerza)
for $antiheroe in $antiheroes
where $antiheroe/fuerza = $min_fuerza
return $antiheroe/nombre
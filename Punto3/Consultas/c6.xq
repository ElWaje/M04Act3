let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
let $max_fuerza := max($antiheroes/fuerza)
return $antiheroes[fuerza = $max_fuerza]/nombre
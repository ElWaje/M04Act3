let $antiheroes := doc("antiheroes.xml")/antiheroes/antiheroe
let $avg_fuerza := avg($antiheroes/fuerza)
return $antiheroes[fuerza > $avg_fuerza]
let $doc := doc("antiheroes.xml")
let $antiheroes := $doc/antiheroes/antiheroe
let $min_fuerza := min($antiheroes/fuerza)

let $modified-doc :=
    copy $c := $doc
    modify (
        for $antiheroe in $c/antiheroes/antiheroe
        where $antiheroe/fuerza = $min_fuerza
        return delete node $antiheroe
    )
    return $c

return $modified-doc
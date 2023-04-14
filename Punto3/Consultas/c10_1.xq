let $doc := doc("antiheroes.xml")
let $antiheroes := $doc/antiheroes/antiheroe
let $antiheroe_modificar := $antiheroes[nombre = "Arlequina"]

let $modified-doc :=
    copy $c := $doc
    modify (
        replace value of node $c/antiheroes/antiheroe[nombre = "Arlequina"]/poder with "Regeneración"
    )
    return $c

return $modified-doc
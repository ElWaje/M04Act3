import module namespace file = "http://expath.org/ns/file";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "xml";
declare option output:indent "yes";

(: Cambie la ruta del archivo en la siguiente línea a la ruta de su archivo de salida deseado :)
let $output-path := "antiheroes.xml"
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

return (
  file:write($output-path, $modified-doc, map { "encoding": "UTF-8" }),
  <result>Documento XML guardado en {$output-path}</result>
)
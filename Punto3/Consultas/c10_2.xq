import module namespace file = "http://expath.org/ns/file";

declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";
declare option output:method "xml";
declare option output:indent "yes";
let $output-path := "antiheroes.xml"
let $doc := doc("antiheroes.xml")
let $antiheroes := $doc/antiheroes/antiheroe
let $antiheroe_modificar := $antiheroes[nombre = "Arlequina"]

let $modified-doc :=
    copy $c := $doc
    modify (
        replace value of node $c/antiheroes/antiheroe[nombre = "Arlequina"]/poder with "Regeneración"
    )
    return $c

return (
  file:write($output-path, $modified-doc, map { "encoding": "UTF-8" }),
  <result>Documento XML guardado en {$output-path}</result>
)
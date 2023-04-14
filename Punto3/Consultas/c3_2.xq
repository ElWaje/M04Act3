import module namespace file = "http://expath.org/ns/file";


declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization"; declare option output:method "xml";
declare option output:indent "yes";
let $output-path := "antiheroes.xml"


let $antiheroes := doc("antiheroes.xml")/antiheroes


let $modificado :=
copy $updated := $antiheroes modify (
insert node
<antiheroe id="AH-0007">
<nombre>InvisiGuy</nombre>
<codigo>AH-0007</codigo>
<foto>img/InvisiGuy.jpg</foto>
<sexo>H</sexo>
<poder>Invisibilidad</poder>
<fuerza>8</fuerza>
<comentario>Experto en ocultarse a plena vista</comentario>
</antiheroe> into $updated
)
return $updated return (
file:write($output-path, $modificado, map { "encoding": "UTF-8" }),
<result>Documento XML guardado en {$output-path}</result>
)

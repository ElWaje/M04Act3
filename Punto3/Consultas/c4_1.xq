let $doc := doc("antiheroes.xml")
let $antiheroes := $doc/antiheroes/antiheroe
return
<antiheroes>
{
  for $antiheroe in $antiheroes
  let $nuevaFuerza := $antiheroe/fuerza * 1.1
  return
    <antiheroe>
    {
      $antiheroe/* except $antiheroe/fuerza,
      <fuerza>{ $nuevaFuerza }</fuerza>
    }
    </antiheroe>
}
</antiheroes>
declare namespace output = "http://www.w3.org/2010/xslt-xquery-serialization";


declare updating function local:insert-antiheroe() {
  insert node
    <antiheroe id="AH-0007">
        <nombre>Nebula</nombre>
        <codigo>AH-0007</codigo>
        <foto>
            <a href="imgs/nebula.png">Nebula_antiheroe</a>
        </foto>
        <sexo>M</sexo>
        <poder>Regeneracion</poder>
        <fuerza>5</fuerza>
        <comentario>
            Viene del cielo.
        </comentario>
    </antiheroe>
  as last into doc("antiheroes_tabla.xml")/antiheroes
};


local:insert-antiheroe()
var user = "Abril"
var persona = 
{
    nombre : 'piky',
    sexo : 'mujer'
}

var miOjeto = 
{
    //Clave : valor
    nombre : "Miranda",
    edad : 1,
    importante : true,
    texto : `usuario ${user}`,

    miFuncion : (a,b) => a + b,
    otroObjeto : persona,
    fecha : new Date()  
}
//console.log(miOjeto.fecha.getFullYear())

// Desestructuracion de objetos
//var {nombre} = miOjeto
//console.log(nombre)

var otraFuncion = (texto, {otroObjeto} ) => {
    console.log(otroObjeto.sexo)
    console.log(texto)
}

otraFuncion(miOjeto.texto,miOjeto)

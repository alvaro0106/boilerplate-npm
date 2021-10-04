var permitido = "usuario permitido"
var miFuncion = acceso => acceso
var perosona = {
    nombre : "quienSea",
    miAutomovil : [
        pintura = {
            marca: "marca",
            preio: 5000,
            color: "rojo"
        },
        vendedor = {
            nombre : "josefo",
            edad: 2,
            ayudante: {
                nombre: "nadie",
                cargo: "ninguno"
    
            }
        }
    ]
}

var miArray = ["unaLetra", 2021, 15.26, true, ["Otro arrya", "letras", 254, "ok"], miFuncion(permitido), perosona]

console.log(miArray[6].miAutomovil[1].ayudante.nombre)
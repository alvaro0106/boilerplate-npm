//Funciones: son un conjunto de sentencias que ejecutan una tarea

function saludo(){
    console.log("hola a todos")
}

var miSuma = function (a, b, c){
    return a + b - c
}

saludo()
console.log(miSuma(4, 8, 5))

console.log(miSuma(3, 3, 5))

var a2 = 8, b2 = 5, c2 = 2

console.log(miSuma(a2, b2, c2))
var accceso = true

/*
var acccesoU = function(a){
    return a
}
*/


//var acccesoU = a => a // Retorna UN solo valor

//var acccesoU = () => false // No pasamos parametros a la funcion y retornamos solo un valor 

//var acccesoU = (a, n) => console.log(`ususrio ${n} acceso ${a}`) //Cuando pasamos mas de un parametro
//acccesoU(accceso,'Miranda')

var acccesoU = (a, nombre) => {
    console.log(`Usuario ${nombre} en ejecucion`)
    return a
}

acccesoU(accceso, "piky") == true
? console.log("Usuario SI permitido")
: console.log("Usuarrio NO permitido")
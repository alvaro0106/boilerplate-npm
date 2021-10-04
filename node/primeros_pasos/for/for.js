/*for (i=1; i<=10; i++)
{    
    if(i==1){
        console.log("hola " + i + " que show")
    }else{
        
        console.log("hola " + i + " veces")
    }
}*/

miArray = ["Hola", 2020, "adios"]

var persona1 = {
    nombre : "Miranda",
    edad : 1,
}

var persona2 = {
    nombre : "Abril",
    edad : 2,
}

var persona3 = {
    nombre : "Nancy",
    edad : 21,
}

var persona4 = {
    nombre : "Caro",
    edad : 4,
}

var personas = [persona1, persona2, persona3, persona4]


for (let index = 0; index < miArray.length; index++) {
    if (personas[index].edad >= 20){
        break;
    }
    const element = personas[index].nombre;
    console.log(element)
}

miArray.forEach((element,i) => {
    console.log(i)
    //console.log(element)
});
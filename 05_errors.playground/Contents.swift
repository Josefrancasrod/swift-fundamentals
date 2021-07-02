import UIKit

func canThrowError() throws{
    //hay codigo que puede causar un error
}

do{
    try canThrowError()
    //aquí no hay error
}catch{
    //si se llega aquí hay error
}

func makeASandwich() throws{

}


do{
    try makeASandwich()
    //me como el sandwich
}catch{
    //no hay platos limpios -> lavar platos
    //no tengo ingredientes -> comprar los ingredientes
}

//aserciones (debug) y precondiciones (build)

let age = -5
//assert(age >= 0, "la edad no puede ser menor a 0")
precondition(age >= 0, "la edad no puede ser menor a 0")
//aquí sigue el codigo
if age > 10 {
    print("TIENES 10 AÑOS")
}else if age >= 0{
    print("tienes de 0 a 9 años")
}else{
    assertionFailure("LA EDAD NO PUEDE SER NEGATIVA");
}



import UIKit

let oragesAreOrange = true
let foodIsDelicious = false

var isAged : Bool

isAged = true

if isAged {
    print("Puedes entrar a la fiesta")
}else{
    print("No puedes entrar")
}



//TUPLAS

let http404Error = (400, "Página no encontrada")
let (statusCode, statusMessage) = http404Error
print("Codigo es \(statusCode), Mensaje: \(statusMessage)")
let(justStatusCode, _) = http404Error

print("El codigo \(http404Error.01)")

let http200Status = (statusCode: 200, description: "OK")
print("Codigo, \(http200Status.statusCode) Mensaje: \(http200Status.description)")

let possibleAge = "31"
let convertedAge = Int(possibleAge) //Int?

var serverResponseCode: Int? = 404
serverResponseCode = nil

//FORCE WRAPPING
var surverAnser :  String?
//print(surverAnser!) //ERROR DE EJECUCION,

if convertedAge != nil {
    print("La edad del usuario no es nula \(convertedAge!)")
}else{
    print("La edad del usuario es nula")
}

//OPTIONAL BINDING

var surverAnswer :  String?
surverAnswer = "23"


if let actualAnswer = surverAnswer {
    //si se llega, surveryAnswer != nil
    print("El string \(surverAnswer) tiene el valor \(actualAnswer)")
}else{
    //si se llega, surveryAnswer != nil
    print("El string \(surverAnswer) es nil...")
}

if let firstNumber = Int("4"),
   let secondNumber = Int("42"),
   firstNumber < secondNumber && secondNumber < 100{
    
    print("\(firstNumber) < \(secondNumber) < 100")
}


//Unwrap implicito
let possibleString: String? = "Un string opcional"
let forcedString: String = possibleString!

let assumedString: String! = "Un string unwrapped de forma implicita de un opcional"
let implicitString: String = assumedString

if assumedString != nil {
    print(assumedString!)
}

print(assumedString)

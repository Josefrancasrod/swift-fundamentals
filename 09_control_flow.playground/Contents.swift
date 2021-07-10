import UIKit

let names = ["Jose","Francisco","Paco"]

for name in names{
    print("Hola, \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog":4]

for(animalName, legCount) in numberOfLegs{
    print("Animals: \(animalName), numero de patas: \(legCount)")
}

for idx in 1...5 {
    print(idx)
}

let base = 2
let power = 10
var answer = 1

for _ in 1...power {
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
let minuteInterval = 5
for tickMark in stride(from: 0, to: minutes, by: minuteInterval){
    print("\(hour) : \(tickMark)")
}

//bucle while
var i = 0
while i<=10{
    i += 1
}

print(i)

repeat{
    i += 1
}while i <= 10

print(i)

//If Else
var temp = 18
if temp <= 15 {
    print("Hace frio! enciende la calefaccion")
}else if temp >= 25{
    print("Hace calor! Encedamso el aire")
}else{
    print("el clima es agradable")
}

//SWITCH CASE

let someCharacter: Character = "z"

switch someCharacter {
    case "a", "A":
        print("ES LA PRIMERA LETRA DEL CODIGO")
    case "z", "Z":
        print("ES LA ULTIMA LETRA")
default:
    print("es otra letra")
}

let moons = 62

let phrase = "Lunas en Saturno"
let naturalCount: String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay pocas"
case 5..<12:
    naturalCount = "hay bastantes"
case 12..<100:
    naturalCount = "hay decenas"
 
default:
    naturalCount = "hay muchisimas"
}

print("\(naturalCount) \(phrase)")

let somePont = (0,1)
switch somePont {
case (0,0):
    print("El punto \(somePont) es el origiden de coordenadas")
case (_,0):
    print("El punto se encuentra en el eje de las x")
case (0, _):
    print("El punto se encuentra en el eje de las y")
case (-2...2,-2...2):
    print("El punto se encuentra en el cuadrado del lado 4")
default:
    print("El punto \(somePont) se esta en algun otro lado")
}



let anotherPoint = (5,-5)
switch anotherPoint {
case (let x, 0):
    print("Sobre el eje de las X, con valor \(x)")
case (0, let y):
    print("Sobre el eje de las X, con valor \(y)")
case let (x,y) where x == y:
    print("El punto se encuentra sobre la recta x = y")
case let (x,y) where x == -y:
    print("El punto se encuentra sobre la recta x = -y")
case let (x, y):
    print("en algun lugar  \(x) , \(y)")
}

let someCharacters: Character = "b"
switch someCharacters {
case "a", "e", "i", "o", "u":
    print("VOCAL")
case "b","c","d","f","g":
    print("CONSONANTE")
default:
    print("Se trata de otro caracter")
}

let stillAnotherPoint = (8,5)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("\(distance) Distancia del origen")
default:
    break
}


//Control Transfer Sentences -  continue, break, fallthrough, return, throw

let sentence = "las grandes mentes piensan igual"
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]
var filteredSentence = ""
for ch in sentence{
    if charactersToRemove.contains(ch){
        continue // salta la iteracion
    }
    filteredSentence.append(ch)
    if ch == "d"{
        break
    }
}
filteredSentence

let integerToDescribe = 4
var description = "El numero \(integerToDescribe) es"

switch integerToDescribe {
case 2,3,5,7,11,13,17,19:
    description += " un numero primo y"
    fallthrough
default:
    description += " un numero entero"
}

print(description)


var people = ["name": "Jose Francisco", "age": 23, "isMale":true] as [String :  Any]
func test(person : [String : Any]){
    guard let surname = person["surname"] else {
        print("nombre desconocido")
        return
    }
    print(surname)
    guard let age = person["age"] else {
        print("edad desconocida")
        return
    }
    print("lA EDAD DE LA PERSONA ES \(age)")
}
people["surname"] = "Surname"
test(person: people)

if #available(iOS 12, macOS 10.12, *){
    //EJECUTAR ACCIONES PARA IOS 12 AS LOS MACOS 10 12
}else{
    //Mantener el codigo viejo con versiones anteriores
}


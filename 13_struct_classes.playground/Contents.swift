import UIKit

//Struct vs Class

struct SomeStruct {
    //La defenición de la estructura aquí
}

class SomeClass{
    //La definición de la clase aquí
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution() //Cuando se crea una estructura como constante, no podra cambiar sus valores
let someVideoMode = VideoMode() //Cuando se declara una clase como constante, si se podrá modificar sus valores, no cambia su espacio en memoria, lo que cambia son las variables

print(someResolution.width)
someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)


let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)

var cinema = hd
print("\(cinema.width) X \(cinema.height)")
cinema.width = 2048
print("\(cinema.width) X \(cinema.height)")
print("\(hd.width) X \(hd.height)")

enum CompassPoint{
    case north, south,east, west
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection

currentDirection = .south

print(currentDirection)
print(oldDirection)

//Classes datos referenciados


let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30.0
//Si se hace referencia a una clase y se cambia el valor en la referencía, cambia el valor del padre.
tenEighty.frameRate


if tenEighty ===  alsoTenEighty{ //Con tres iguales '===' comapración entre clases, '!==' diferente
    print("Los objetos son iguales")
}else{
    print("No son iguales")
}



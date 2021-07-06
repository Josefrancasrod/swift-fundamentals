import UIKit

let someString = "Soy un string"

let multiLineString = """
        Hola,\
        Esto es un string Multilinea\
        esta muy bien
"""

//CON BACKSLASH SE IGNORA EL SALTO DE LINEA

let wiseWords = "\"La imaginacion es mas importante que el saber\" -Albert Einstein"

let dolarSing = "\u{24}"
let blackHeart = "\u{2665}"
let heart = "\u{1F496}"

// with \u{UNICODE} nos sirve para poner caracteres unicode

var emptyString = ""
var anoptherEmpty = String()

if emptyString.isEmpty{
    print("nada que ver aquí")
}else{
    print("el string tiene un valor")
}

var newSomeString = "Un caballo"

newSomeString += "y un carruaje"
newSomeString += "un soldado"

var a = "A"
var b = "B"
print("a: \(a), b: \(b)")
b = a
print("a: \(a), b: \(b)")
b = "C"

print("a: \(a), b: \(b)")

let name = "José 😃"

for ch in name{
    print(ch)
}

let exclamationMark : Character = "!"
let nameChars: [Character] = ["j","o","s","é"]
var nameString = String(nameChars)

let compoundName = "José " + "Francisco"

nameString.append(exclamationMark)

let multiplier = 5

for n in 1...9{
    let message = "El producto de \(multiplier) * \(n) = \(multiplier*n)"
    print(message)
}


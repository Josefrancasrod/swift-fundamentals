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

let greeting = "Hola, que tal?"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

for idx in greeting.indices{
    print(greeting[idx]);
}

var welcome = "Hola"

welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.endIndex, offsetBy: -7)..<welcome.endIndex

welcome.removeSubrange(range)
welcome

let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
let fristPart = greeting[..<index]

let newString = String(fristPart)

let newGreeting = "Hola, Soy José Francisco"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("l")

let collection = [
    "Act 1: Scene 1",
    "Act 1: Scene 2",
    "Act 1: Scene 3",
    "Act 2: Scene 1",
    "Act 2: Scene 2",
    "Act 2: Scene 3",
    "Act 3: Scene 1",
    "Act 3: Scene 2",
    "Act 3: Scene 3",
]


var actOneSceneCount = 0

for scene in collection{
    if scene.hasPrefix("Act 1"){
        actOneSceneCount += 1
    }
}

print(actOneSceneCount)

let ghost = "¡Fantasma! 👻"

for codeUnit in ghost.utf8{
    print(codeUnit, terminator: " ")
}
print("")
for codeUnit in ghost.utf16{
    print(codeUnit, terminator: " ")
}

print("")
for codeUnit in ghost.unicodeScalars{
    print(codeUnit, terminator: " ")
}



import UIKit

let b = 10
var a = 5

let (x,y) = (1,2)

if a == b {
    print("los valores son iguales")
}

"Hello" + "World"

9/4
9%4

9 == 4*2+1

let five = 5
let minusFive = -5
let plusFive = -minusFive


var number = 5

number += 3
number -= 2

1 == 1
1 == 2
1 != 2
2 > 1
2 < 1
2 >= 1
1 >= 1
2 <= 1

let name = "Juan Gabriel"

if name == "Juan Gabriel"{
    print("Bienvenido \(name), eres invitado")
}else{
    print("Cuidado, ha aparecido un \(name) salvaje")
}

(1, "Juan Gabriel") < (2, "Ricardo Celis")
(3, "Juan Gabriel") < (3, "Ricardo Celis")
(3, "Ricardo") < (3, "Juan Gabriel")
(4, "perro") == (4, "perro")

//NO SE PUEDEN COMPARAR BOOLEANOS CON MENORES Y MAYORES QUE SOLO IGUALDADES

let contentHeight = 40
var hasImage = true
var rowHeight  = 0
/*
if hasImage {
    rowHeight = contentHeight + 50
} else {
    rowHeight = contentHeight + 10
} */

rowHeight = contentHeight + (hasImage ? 50 : 10)

// Operador Nil Coalescing

let defaultAge = 18
var userAge: Int?

userAge = 31
var ageToBoUsed = userAge ?? defaultAge
//ageToBeUsed = (userAge != nil ? userAge! : defaultAge)

for idex in 1...5 {
    print(idex)
}

for idx in 1..<5 {
    print(idx)
}

let names = ["Jose","Francisco", "Ricardo"]

for idx in 0..<names.count{
    print("La persona\(idx+1) se llammma \(names[idx])" )
}

for name in names[1...]{
    print(name)
}

for name in names[..<2]{
    print(name)
}

let range = ...5
range.contains(7) //false
range.contains(4) //true
range.contains(-2) //true -infinity to 5

let allowEntry = false

if !allowEntry {
    print("Acceso denegado")
}

let enterDoorCode = true
let passRetinascan = true

if enterDoorCode && passRetinascan{
    print("bienvenido")
}else{
    print("acceso denegado")
}

let hasMoney = false
let hasInvitation = false

if hasImage || hasInvitation {
    print("Bienvenido")
}else{
    print("No eres bienvenido")
}










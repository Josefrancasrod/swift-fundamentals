import UIKit

enum SomeEnumeration{
    //definicion
}

enum CompassPoint: String {
    case north
    case south
    case east
    case west
}

enum Planet: Int{
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east

directionToGo = .north

switch directionToGo {
case .east:
    print("Este")
case .west:
    print("west")
case .south:
    print("sur")
case .north:
    print("norte")
}
let somePlanet = Planet.mars
switch somePlanet {
case .earth:
    print("la tierra es segura")
default:
    print("no es seguro este planeta")
}

enum Beverage: CaseIterable  {
    case coffe, tea, juice, redbull
}

let numbersOfChoices = Beverage.allCases.count
for beverage in Beverage.allCases {
    print(beverage)
}



enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 77777, 88888, 3)
productBarcode = .qrCode("ASDFGHJKL")

switch productBarcode {
case let .upc( numberSystem, manufacturer, product, check):
    print("\(numberSystem) \(manufacturer) \(product) \(check)")
case let .qrCode(number):
    print(number)
}

enum ASCIIControlCharacter: Character {
    case tab = "\t"
    case lineFeed = "\n"
    case carriageReturn = "\r"
}


let earthOrder = Planet.earth.rawValue

let northDirection = CompassPoint.north.rawValue

let possiblePlanet = Planet(rawValue: 5)

let planetPosition = 6

if let anyPlanet = Planet(rawValue: planetPosition){
    switch anyPlanet {
    case .earth:
        print("la tierra es segura")
    default:
        print("no es seguro este planeta")
    }
}else {
    print("planeta indicado no exite")
}

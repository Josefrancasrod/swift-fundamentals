import UIKit

//ARRAY

var someInts = [Int]()
someInts.count
someInts.append(31)
someInts.count
someInts = []

var someDoubles = Array(repeating: 3.1416, count: 7)
someDoubles.count

var moreDoubles = Array(repeating: 2.5, count: 4)

var aLotOfDoubles = someDoubles + moreDoubles //concatena arrays
aLotOfDoubles.count

var shoppingList: [String] = ["Papas", "Pimiento", "Toritllas", "Cerdo"]
shoppingList.count

if shoppingList.isEmpty{
    print("La lista esta vacia")
}else{
    print("Hay que comprar la lista")
}

shoppingList.append("Coca Cola")
shoppingList.count

shoppingList += ["Totopos", "Guacamole", "Pico de gallo"]

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"
shoppingList[4...6]
shoppingList[4...6] = ["Naranja", "Platano", "Mango"] //remplaza el elemento de la pos 4 a la 6

let pepper = shoppingList.remove(at: 1)

let _ = shoppingList.removeLast()
shoppingList

for item in shoppingList{
    print(item)
}

for (idx, item) in shoppingList.enumerated(){
    print("\(idx): \(item)")
}

//CONJUNTO (Set)

var letter = Set<Character>()
letter.count
letter.insert("a")
letter.insert("h")
letter.insert("b")

var favouriteGames : Set<String> = ["Portal", "Half - Life", "Spiderman"]

if favouriteGames.isEmpty {
    print("no hay juegos favoritos")
}

favouriteGames.insert("Mortal Kombat")

if let removedGame = favouriteGames.remove("Spiderman"){
    print("Se elimino el juego \(removedGame)")
}

if favouriteGames.contains("Portal"){
    print("me encanta ese juego")
}

for vg in favouriteGames.sorted(){
    print(vg)
}

favouriteGames.insert("Portal")

let oddDigits: Set = [1,3,5,7,9]
let evenDigits: Set = [0,2,4,6,8]
let primenumbers: Set = [2,3,5,7]

//A union B = elementos que son o bien de A o bien de B o de los dos

oddDigits.union(evenDigits).sorted()

//A interseccion = elementso que son de la vez de A y B
oddDigits.intersection(evenDigits)
evenDigits.intersection(primenumbers).sorted()
oddDigits.intersection(primenumbers).sorted()

// A - B= ELEMENTOS QUE SON DE A pero no de B

oddDigits.subtracting(primenumbers).sorted()

//A+B = (a-b) union (b-a)
oddDigits.symmetricDifference(primenumbers).sorted()

let houseAnimals: Set = ["🐕","😹"]
let farmAnimals: Set = ["🐮","🐔", "🐑", "🐕", "😹"]
let cityAnimals: Set = ["🐀", "🪲"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
//a y B son disjuntos si su interseccion es vacia
farmAnimals.isDisjoint(with: cityAnimals)



//Diccionario [k1: v1, k2:v2 ...]

var nameOfIntegers = [Int: String]()
nameOfIntegers[15] = "Quince"
nameOfIntegers = [:] //diccionario vacio

var airports: [String: String] = ["YYZ": "Toronto", "DUB":"Dublin", "DGO": "Durango"]
airports.count

airports.isEmpty

airports["LHR"] = "London City Airport"
airports
airports["LHR"] = "London Heathrow"
airports

if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB"){
    print("El aeropuerto anterionmente se llamaba \(oldValue)")
}

airports["DGO"] = nil
if let removedAirport = airports.removeValue(forKey: "DUB"){
    print(removedAirport)
}
airports


for (key, value) in airports{
    print("\(key): \(value)")
}

for airportKey in airports.keys {
    print(airportKey)
}

for airportName in airports.values{
    print(airportName)
}

let airportKey = [String](airports.keys)
let airportNames = [String](airports.values)

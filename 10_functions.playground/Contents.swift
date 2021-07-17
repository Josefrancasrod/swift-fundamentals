import UIKit

func greeting(person: String) -> String{
    let greet = "Hola, \(person)"
    return greet
}

greeting(person: "José Francisco")


func sayHelloWorld() -> String {
    return "Hello World"
}

func greeting(person: String, isMale: Bool) -> String{
    if isMale{
        return "Bienvenido Caballero \(person)"
    }else{
        return "Bienvenida Dama \(person)"
    }
}

greeting(person: "Jose", isMale: true)
greeting(person: "Maria", isMale: false)

func greet2(person: String){
    print("\(person)")
}

greet2(person: "Jose")
greet2(person: "Francisco")


func printAndCount(string: String) -> Int {
    print(string)
    return string.count
}

printAndCount(string: "Holaaaa")

func printWithoutCounting(string: String){
    let _ = printAndCount(string: string)
}

printAndCount(string: "Holaaaaaa")
printWithoutCounting(string: "Holaaaaaa")

func minMax(arrays:[Int]) -> (min: Int, max: Int)? {
    var currentMin = arrays[0]
    var currenMax = arrays[0]
    
    if arrays.isEmpty { return nil }
    
    for value in arrays[1..<arrays.count]{
        if value < currentMin {
            currentMin = value
        } else if value > currenMax{
            currenMax = value
        }
    }
    return (currentMin, currenMax)
}


let bounds = minMax(arrays: [1,5,2,6,3,5,8,2,7])
print("Los valores se halla entre \(bounds!.min) y \(bounds!.max)")


func someFunction(f1 firsParamName: Int, f2 secondParamName: Int = 6){
    // asdasdasdas
    print(firsParamName + secondParamName)
}


someFunction(f1: 1, f2: 2)


func greeting(_ person: String, from hometown: String) -> String {
    return "Hola \(person) de \(hometown)"
}

greeting("José Francisco", from: "Mexico")

someFunction(f1: 5, f2: 1)
someFunction(f1: 5)

func mean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers{
        total += number
    }
    return total/Double(numbers.count)
}

mean(1,2,3,4,5,6)

var x = 5

func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("el número ahora es \(number2)")
}

addOne(number: x)


func swapTwoInts(_ a: inout Int, _ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var otherInt = 7
print("\(someInt), \(otherInt)")
swapTwoInts(&someInt, &otherInt)
print("\(someInt), \(otherInt)")


func addTwoInter(_ a: Int, _ b: Int) -> Int {
    return a+b
}//(Int, Int) -> Int

func multiplyTwoInter(_ a: Int, _ b: Int) -> Int {
    return a*b
}

func printHW() {
    print("Hello World")
} // () -> Void

var mathFunction: (Int, Int) -> Int = multiplyTwoInter

mathFunction(4,5)

func printMathResult(_ mathFunc: (Int, Int) -> Int, _ a: Int, _ b: Int){
    print("Resultado \(mathFunc(a,b))")
}


printMathResult(multiplyTwoInter, 5, 9)
/*
func stepForward(_ intput: Int) -> Int{
    return intput+1
}

func stepBackward(_ intput: Int) -> Int{
    return intput-1
}

func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var value = 7

let moveNearerZero = chooseStepFunction(backward: value > 0)

while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}
*/



func chooseStepFunction(backward: Bool) -> (Int) -> Int {
    
    func stepForward(_ intput: Int) -> Int{
        return intput+1
    }

    func stepBackward(_ intput: Int) -> Int{
        return intput-1
    }
    
    return backward ? stepBackward : stepForward
}

var value = 7

let moveNearerZero = chooseStepFunction(backward: value > 0)

while value != 0 {
    print("\(value)...")
    value = moveNearerZero(value)
}

print("cero...")



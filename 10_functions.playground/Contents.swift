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



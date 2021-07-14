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


import UIKit

let names = ["Jose", "Francisco", "Carlos", "Ale",]

func backward(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
backward("Jose", "Francisco")

var reversedNames = names.sorted(by: backward)

/*
 
 { (params) -> return type in
    //Código del closure
 }
 
 **/

reversedNames = names.sorted(by: {(s1: String, s2: String) -> Bool in  return s1 > s2})
reversedNames = names.sorted(by: {s1, s2 in s1 > s2})
reversedNames = names.sorted(by: {$0>$1})
reversedNames = names.sorted(by: >)



func someFunctionThatTakesClosure(closure: () -> Void){
    //code
}

someFunctionThatTakesClosure(closure: {
    //aqui ira el cuerpo
})

someFunctionThatTakesClosure {
    //cuerpo
}

let digitNames = [0:"Cero", 1: "Uno", 2:"Dos", 3:"Tres", 4: "Cuatro", 5:"Cinco", 6: "Seis", 7:"Siete", 8:"Ocho", 9: "Nueve"]


let numbers = [16,58,510,2127]

let numberStrings = numbers.map({(number) -> String in
    
    var number = number
    var output = ""
    repeat{
        output = digitNames[number%10]! + output
        number /= 10
    }while number > 10
    
    return output
})

func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

let incrementByTen = makeIncrementer(forIncrement: 10)
incrementByTen()
incrementByTen()

let incrementBySeven = makeIncrementer(forIncrement: 7)

incrementBySeven()
incrementBySeven()


var completionHandlers: [() -> Void] = []

func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void){
    completionHandlers.append(completionHandler)
}
completionHandlers.count

func someFunctionWithNonEscapingClosure(closure: () -> Void){
    closure()
}


class SomeClass {
    var x = 10
    func doSomething(){
        someFunctionWithEscapingClosure {
            self.x = 100
        }
        
        someFunctionWithNonEscapingClosure {
            x = 200
        }
        
    }
    
}

let instace = SomeClass()
instace.doSomething()
print(instace.x)

completionHandlers.count
completionHandlers.first?()
print(instace.x)

    







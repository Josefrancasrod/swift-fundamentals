import UIKit

class Counter {
    var count = 0
    
    func increment(){
        self.count += 1
    }
    
    func increment(by amount:Int){
        self.count += amount //con self indico que la la variable es la que se utiliza en la clase
    }
    
    func reset(){
        self.count = 0
    }
}

let counter = Counter()

counter.increment()

counter.increment(by: 8)

counter.reset()

struct Point{
    var x = 0.0, y = 0.0
    func isToTheRight(of x:Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX:Double, y deltaY:Double){ //Las estructuras no pueden modificar sus valores desde la funcion, se permite solo agregando la palabra mutating
        //self.x += deltaX
        //self.y += deltaY
        self = Point(x: self.x + deltaX, y: self.y + deltaY) // 'self = Point()' reasigna a toda la estructura el nuevo valor
    }
}

var somePoint = Point(x: 4, y: 5)

somePoint.isToTheRight(of: 1)
somePoint.isToTheRight(of: 54)

somePoint.moveBy(x: 2, y: -3)

enum DifferentStateSwitch{
    case off, low, high
    mutating func next(){
        switch self {
        case .off:
            self = .low
        case .low:
            self = .high
        case .high:
            self = .off
        }
        
    }
}

var controllerStatus = DifferentStateSwitch.off
controllerStatus.next()
controllerStatus.next()
controllerStatus.next()

class SomeClass {
    class func someMethod(){
        print("Hola")
    }
}

SomeClass.someMethod()

struct LevelTracker{
    static var highestUnlockLevel = 1
    var currentLevel = 1
    
    static func unlocl(_ level:Int){
        if level > highestUnlockLevel {
            highestUnlockLevel = level
        }
    }
    
    static func isUnlocked(_ level:Int) -> Bool {
        return level <= highestUnlockLevel
    }
    
    mutating func advance(to level:Int) -> Bool {
        if LevelTracker.isUnlocked(level){
            currentLevel = level
            return true
        }else {
            return false
        }
    }
}

class Player{
    var tracker = LevelTracker()
    let playerName:String
    func complete(level:Int){
        LevelTracker.unlocl(level + 1)
        tracker.advance(to: level + 1)
    }
    
    init(name: String) {
        self.playerName = name
    }
    
}

var player = Player(name: "José")
player.complete(level: 7)
player

if player.tracker.advance(to: 7){
    print("Podemos avanzar al nivel 7")
} else{
    print("el nievel 7 esta bloqueado")
}



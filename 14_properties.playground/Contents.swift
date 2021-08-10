import UIKit

struct FixedLengthRange {
    var firstValue : Int
    let length : Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)

rangeOfThreeItems.firstValue = 6

let rangeOfFourItems = FixedLengthRange(firstValue: 0, length: 4)

//rangeOfFourItmes.firstValue = 5 ESTO DA ERROR


//Lazy Stored Property


class DataImporter {
    var filename = "data.txt"
}

class DataManager{
    lazy var importer = DataImporter()
    var data = [String]()
}


let manager = DataManager()
manager.data.append("Algo de Datos")
manager.data.append("Muchos mas datos")
manager
//hasta esta linea el importer no ha sido creado
manager.importer.filename
//aquí la variable importer ya ha sido creada
manager



//computed properties


struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var orgin = Point()
    var size = Size()
    var center: Point{
        get{
            
            //let centerX = orgin.x + size.width/2
            //let centerY = orgin.y + size.height/2
            
            //return Point(x: centerX, y: centerY)
            Point(x: orgin.x + size.width/2, y: orgin.y + size.height/2)
        }
        //set(newCenter){
          //  orgin.x = newCenter.x - size.width/2
            //orgin.y = newCenter.y - size.height/2
        //}
        
        set{
            orgin.x = newValue.x - size.width/2
            orgin.y = newValue.y - size.height/2
        }
    }
}

var square = Rect(orgin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))

square.center

let initialSquareCenter = square.center
square.center = Point(x: 18, y: 3)


struct Cubeid{
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double{
        return width * height * depth
    }
}

let cuboid = Cubeid(width: 4.0, height: 5.0, depth: 2.0)

cuboid.volume
//cuboid.volume = 4 -> Esta instrucción no es posible por que es de solo lectura



//willSet //didSet

class StepCounter{
    var totalSteps
        : Int = 0 {
        willSet(newTotalSteps){
            print("El numero de pasos va a subir hasta \(newTotalSteps)")
        }
        didSet{
            if totalSteps > oldValue {
                print("el numero de pasos a incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let stepCoubnter = StepCounter()
stepCoubnter.totalSteps = 200
stepCoubnter.totalSteps = 520

struct SomeStruct{
    var counter = 0
    static var stroredTypeProperty = "SOME VALUE" //Con static solo se puede acceder a traves de la clase no desde la instancia
    static var computedTypeProperty: Int {
        return 5
    }
}

var instaceStr = SomeStruct()

var otherInstaceStr = SomeStruct()

SomeStruct.computedTypeProperty

class SomeClass{
    static var storedTypeProperty = "Some Value" //Con staticvar en la herencia se comparte entre todas las instancias
    static var computedTypeProperty: Int {
        return -9
    }
    
    class var overridableComputedTypeProperty:Int{
        return 108
    }
}




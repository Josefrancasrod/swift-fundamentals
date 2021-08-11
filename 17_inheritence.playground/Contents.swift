import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Viajando a \(currentSpeed) km/h"
    }
    
    func makeNoise() {
        //do nothing, cada vehiculo tiene su forma de hacer ruido
    }
}

let someVehicle = Vehicle()
print(someVehicle.description)

class Bicycle : Vehicle {
    var hasBasket = false
    override func makeNoise() {
        print("riiin riiin")
    }
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

print(bicycle.description)

class Tandem : Bicycle {
    var currentNumberofPassengers = 0
}

let tandem = Tandem()

tandem.hasBasket = true
tandem.currentNumberofPassengers = 2
tandem.currentSpeed = 22.0

print(tandem.description)

class Train: Vehicle {
    final var numberOfWagon = 0
    
    override func makeNoise() {
        print("chooo choooo")
    }
}

let train = Train()

train.makeNoise()

tandem.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " en la marcha \(gear)"
    }
}

let car = Car()
car.currentSpeed = 55.0
car.gear = 3

print(car.description)
print(tandem.description)


class AutomaticCar : Car {
    override var currentSpeed: Double {
        didSet{
            gear = Int(currentSpeed/15.0) + 1
        }
    }
}

let automatic = AutomaticCar()
automatic.currentSpeed = 35
print(automatic.description)
automatic.currentSpeed = 65
print(automatic.description)

class Railway : Train{
    //override var numberOfWagons como ya se encunetra en final en la clase train no permite modificar la variable
    var station:String {
        return "Station"
    }
}

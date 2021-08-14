import UIKit


/*class Person{
    var residence: Residence?
}


class Residence {
    var numberOfRooms = 1
}

let edgar = Person()
//let roomCount = edgar.residence!.numberOfRooms

if let roomCount = edgar.residence?.numberOfRooms{
    print("La casa de egar tiene \(roomCount) habitacion(es)")
}else {
    print("Edgar no tiene casa")
}

edgar.residence = Residence() */

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms : Int {
        return rooms.count
    }
    subscript(i: Int) -> Room {
        get{
            return rooms[i]
        }
        set{
            rooms[i] = newValue
        }
    }
    var address: Address?
    
    func printNumberofRooms(){
        print("El número de habitaciones de la vivienda: \(numberOfRooms)")
    }
}

class Room{
    let name: String
    init(name: String) {
        self.name = name
    }
}

class Address{
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingidentifier() -> String? {
        if let buildingNumber = buildingNumber, let street = street{
            return "\(buildingNumber), \(street)"
        }else if buildingName != nil {
            return buildingName
        } else{
            return nil
        }
    }
}


let edgar = Person()

if let roomCount = edgar.residence?.numberOfRooms{
    print("La casa de egar tiene \(roomCount) habitacion(es)")
}else {
    print("Edgar no tiene casa")
}

func createAddress() -> Address{
    print("La funcion ha sido llamada")
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Calle de Platzi"
    return  someAddress
}



edgar.residence?.address = createAddress()
edgar

edgar.residence?.printNumberofRooms()

if (edgar.residence?.address = createAddress()) != nil {
    print("Ha sido posible configurar la direccion de edgar")
}else{
    print("No se sabe la direccion de edgar")
}

if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitacion es \(firstRoomName)")
}else{
    print("La primera habitacion no se sabe que es")
}

edgar.residence?[0] = Room(name: "Bathroom")

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Living Room"))
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgar.residence = edgarHouse

if let firstRoomName = edgar.residence?[0].name {
    print("La primera habitacion es de \(firstRoomName)")
}else{
    print("La primera habitacion no se sabe de quien es")
}

edgar.residence?.address = createAddress()

if let edgarStreet = edgar.residence?.address?.street{
    print("La calle de edtar esta en \(edgarStreet)")
}else{
    print("No se donde vive edgar")
}

if let buildngIdentifier = edgar.residence?.address?.buildingidentifier(){
    print("Edgar vive en \(buildngIdentifier)")
}

if let _ = edgar.residence?.address?.buildingidentifier()?.hasPrefix("13"){
    print("Edgar vive en el número 13")
} else{
    print("Edgar no vive en el número 13")
}

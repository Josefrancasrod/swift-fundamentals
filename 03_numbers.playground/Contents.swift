import UIKit

let minValue = UInt8.min //0
let maxValue = UInt8.max //255
let maxValueInt = Int64.max

let f1 : Float = 3.14159265 //3.141593
let d1 : Double = 3.14159265 //3.14159265

let meaningOfLife = 42 //Int
let pi = 3.14159 //Double
let anotherPi = 3 + 0.14159 //Double

let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimalInteger = 0x11

let decialDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 0000123.456
let someNumber = 000000097.54

let oneMillion = 1_000_000
let oneMillionWithDecimal = 1_000_000.000_001


//ERRORES DE TIPO DE DATO
//letcannotBeNegative UInt8 = -1
//let tooBig: UInt8 = UInt8.max + 1

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

let three = 3
let decumalNumber = 0.14159
let piNum = Double(three) + decumalNumber

typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max //UInt16.max

import UIKit

/*:
Basics
-----
*/

//: Constants

let myConstant = 3

//myConstant = 4









//: Variables

var myVariable = 3

//optional semicolons

myVariable = 4;









//: Primitives

let myInt = 3 

let myDouble = 3.0

let myString = "This is a string"

let myBool = true









//: Explicit Types

let explicitInt: Int = 3

let explicit8BitInt: Int8 = 3 // Int, Int8, Int16, Int32, Int64


print(Int64.max)
print(Int.max)


let myFloat: Float = 3.0









//: Type Safety

let aDouble = 3.0
let aInt = 3

let total = aDouble + Double(aInt)









//: Tuples

let myTuple = (3, "a String")

print("The number = \(myTuple.0)")
print("The string = \(myTuple.1)")



let (theNum, theString) = myTuple

print("The number = \(theNum)")
print("The string = \(theString)")



let myNamedTuple = (num: 4, str: "another String")

print("The number = \(myNamedTuple.num)")
print("The string = \(myNamedTuple.str)")









//: Arrays

let myArray = [1, 2, 3]

var mutableArray: Array<Int> = []

mutableArray.append(1)
mutableArray.append(2)
mutableArray.append(3)









//: Dictionaries

let myDictionary = ["key": "value"]

var mutableDictionary = [String: String]()
mutableDictionary["key"] = "value"

print(mutableDictionary)

//: [Next](@next)

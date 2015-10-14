import UIKit

/*:
Basics
-----
*/

//: Constants

var myConstant = 3

myConstant = 4









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

let explicitInt: Int = 3_000_000

let explicit8BitInt: Int8 = 3 // Int, Int8, Int16, Int32, Int64


let i64 = Int64.max
let i = Int.max


let myFloat: Float = 3.0










//: Type Safety

let aDouble = 3.0
let aInt = 3

//Can't add different types (overloading?)

public func +(lhs: Double, rhs: Int) -> Double {
  return lhs + Double(rhs)
}


let total = aDouble + aInt









//: Tuples
let myTuple = (3, "a String")

//Access by index

let num = myTuple.0









//: Named members
let myNamedTuple = (num: 4, str: "another String")

//Access by name



let num = myNamedTuple.num







//: Arrays

var myArray = [1, 2, 3]


//mutable arrays

myArray.append(2)







//: Dictionaries

var myDictionary: Dictionary<String, AnyObject> = ["key": "value", "more": 123]

//mutable dictionaries

let val  = myDictionary["newVar"]

let anotherDict = [String:String]()


//j
//: [Next](@next)

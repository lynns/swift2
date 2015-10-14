//: [Previous](@previous)

import Foundation

/*:
Optionals
-----
Can contain a value, or nil.  Applies to all types (objects and primitives)

All about safety.
*/
//Objects can't be set to nil

let myString: String? = nil










//: Usage
let numberString = "asdf"

let number = Int(numberString) //might fail to parse



//Can't use number directly


//force unwrap




//if-let unwrap

if let otherNum = number {
  let total2 = realNum + 3
} else {
  print("hello")
}







//: Multiple Unwraps

if let firstNum = Int("1000"),
       secondNum = Int("1000")
{
  let total = firstNum + secondNum
}

//: [Next](@next)

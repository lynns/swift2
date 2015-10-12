//: [Previous](@previous)

import Foundation

/*:
Optionals
-----
Can contain a value, or nil.  Applies to all types (objects and primitives)

All about safety.
*/

let numberString = "100"

let number = Int(numberString) //might fail to parse



//Can't use number directly

let total = number + 3










//: Options for Unwrapping Optionals

let forceUnwrapped = number!
let total = forceUnwrapped + 3



if let safeUnwrapped = number {
  let total = safeUnwrapped + 3
}









//: Multiple Unwraps

if let firstNum = Int("1000"),
       secondNum = Int("1000")
{
  let total = firstNum + secondNum
}

//: [Next](@next)

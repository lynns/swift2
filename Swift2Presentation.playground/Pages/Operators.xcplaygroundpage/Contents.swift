//: [Previous](@previous)

import Foundation

/*:

Standard Operators

- Unary (++, --, !, etc)
- Binary (+, -, *, /, %, etc)
- Ternary (?:)

*/









//: Nil Coalescing Operator ??

let myNum = Int("asd") ?? 1000

// Javscript: var myNum = parseInt("asd") || 1000









//: Optional Chaining

let myDictionary: Dictionary<String, AnyObject?>? = [:]

if let myValue = myDictionary?["aKey"] as? String {
  print("Found a string value for key")
}









//: Control Flow

let myArray = [5, 6, 7]

for i in myArray {
  print("i = \(i)")
}

//: [Next](@next)

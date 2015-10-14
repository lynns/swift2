//: [Previous](@previous)

import UIKit

/*:

Standard Operators

- Unary (++, --, !, etc)
- Binary (+, -, *, /, %, etc)
- Ternary (?:)

*/









//: Nil Coalescing Operator ??

// Javscript: var myNum = parseInt("asd") || 1000

let myNum = Int("asd") ?? 1000









//: Optional Chaining
let vc: UIViewController? = UIViewController()

if let navigationBar = vc?.navigationController?.navigationBar {
  print("Found bar")
  
} else {
  print("No Bar found")
}









//: Control Flow

let myArray = [5, 6, 7]

for i in myArray {
  print("i = \(i)")
}



if myArray.count > 2 {
  print("more than 2 items")
}

//: [Next](@next)

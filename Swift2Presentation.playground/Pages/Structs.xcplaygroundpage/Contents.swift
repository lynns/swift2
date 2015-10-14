//: [Previous](@previous)

import UIKit
let PI = 3.14159

/*:
Structs - Value Type
-----
*/

struct Circle {
  let radius: Double
  let color: UIColor?
  
  func area() -> Double {
    return PI * radius * radius
  }
}


struct Square {
  let length: Double
  let color: UIColor?
  
  func area() -> Double {
    return length * length
  }
}


// Create instances

let s = Square(length: 1.0, color: UIColor.redColor())



//: [Next](@next)

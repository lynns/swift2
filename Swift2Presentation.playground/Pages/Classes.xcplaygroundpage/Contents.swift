//: [Previous](@previous)

import UIKit
let PI = 3.1459

/*:
Classes - Reference Type
-----
*/

class Shape {
  let color: UIColor?
  
  init(color: UIColor?) {
    self.color = color
  }
  
  func area() -> Double {
    assertionFailure("This must be implemented by sub classes")
    return 0.0
  }
}

class Circle: Shape {
  let radius: Double
  
  init(radius: Double, color: UIColor?) {
    self.radius = radius
    super.init(color: color)
  }
  
  override func area() -> Double {
    return PI * radius * radius
  }
}

class Square: Shape {
  let length: Double
  
  init(length: Double, color: UIColor?) {
    self.length = length
    super.init(color: color)
  }
  
  override func area() -> Double {
    return length * length
  }
}



let c = Circle(radius: 3.0, color: UIColor.redColor())

let s = Square(length: 4.0, color: UIColor.blueColor())










//: Class Extensions

extension Square {
  func perimeter() -> Double {
    return length * 4
  }
}

let perimeter = s.perimeter()

//: [Next](@next)

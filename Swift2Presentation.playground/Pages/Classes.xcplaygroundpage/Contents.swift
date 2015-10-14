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
  
  init(length: Double = 10.2, color: UIColor?) {
    self.length = length
    super.init(color: color)
  }
  
  override func area() -> Double {
    return length * length
  }
}



//create instances












//: Class Extensions

extension Square {
  func perimeter() -> Double {
    return length * 4
  }
}


//use perimeter

let s = Square(color: UIColor.redColor())

s.perimeter()








//: [Next](@next)

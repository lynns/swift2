//: [Previous](@previous)

import UIKit

/*:
Protocol Extensions
-----
Way better than abstract classes
*/

struct Shape {
  let color: UIColor?
}

struct Line {
  let length: Int
  let color: UIColor?
}








//: Define the protocol
protocol Drawable {
  func draw() -> String
}


//Extend the protocol with default implementation
extension Drawable {
  func draw() -> String {
    return "Draw the shape"
  }
}







//: Add the protocol to our Structs
extension Shape: Drawable { }

extension Line: Drawable {
  func draw() -> String {
    return "Do Special Line Drawing"
  }
}







//: Create instances of our structs
let s = Shape(color: nil)
s.draw()

let l = Line(length: 24, color: nil)
l.draw()

//: [Next](@next)

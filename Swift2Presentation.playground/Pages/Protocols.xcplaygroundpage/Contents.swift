//: [Previous](@previous)

import UIKit

/*:
Protocols - Like an interface
-----
*/

//: Define our struct
struct Shape {
  let color: UIColor?
}







//: Define a protocol
protocol Drawable {
  func draw() -> String
}







//Extend our Struct to implement protocol
extension Shape: Drawable {
  func draw() -> String {
    return "Draw the shape"
  }
}






//: Create instance of Struct
let s = Shape(color: nil)

s.draw()

//: [Next](@next)

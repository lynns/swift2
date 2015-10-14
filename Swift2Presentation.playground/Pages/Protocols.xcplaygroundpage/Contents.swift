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


extension Shape: Drawable {
  func draw() -> String {
    return "lksdjf"
  }
}




//Extend our Struct to implement protocol






//: Create instance of Struct and use draw









//: [Next](@next)

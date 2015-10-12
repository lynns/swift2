//: [Previous](@previous)

import Foundation

/*:
Enums
-----
*/

enum Shape: Int {
  case Circle = 10
  case Square
  case Triangle, Rectangle
}


let circle = Shape.Circle

let square: Shape = .Square



print("Triangle Value = \(Shape.Triangle.rawValue)")







//: Associated Values

enum BetterShape {
  case Circle(radius: Double)
  case Rectangle(short: Int, long: Int)
}

let betterCircle = BetterShape.Circle(radius: 3.0)


let betterRectangle = BetterShape.Rectangle(short: 4, long: 10)









//: Enums with Smarts

enum FancyShape {
  case Circle, Square, Triangle
  
  func area() -> Double {
    //compute area here
    return 100
  }
}

let c = FancyShape.Circle

print("Area of c = \(c.area())")









/*:
Switch Statements
-----
*/

switch circle {
  case .Circle:
    print("Found a circle")
    
  case .Square:
    print("Found a square")
    
  default:
    print("Found a different shape")
}






let response = (code: 401, error: NSError(domain: "org.familysearch.error", code: 0, userInfo: nil))


switch response {
  case (200...299, let error): print("Do success stuff")
  
  case (401, let error): print("Handle session expiration")
  
  default: print("Handle all other errors: \(response.error)")
}


//: [Next](@next)

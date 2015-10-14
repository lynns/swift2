//: [Previous](@previous)

import Foundation
let PI = 3.1459

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



let str = "Triangle Value = \(Shape.Triangle.rawValue)"


//Create instance from raw

let tri = Shape(rawValue: 12)






//: Associated Values

enum BetterShape {
  case Circle(radius: Double)
  case Rectangle(short: Int, long: Int)
}

let betterCircle = BetterShape.Circle(radius: 3.0)


let betterRectangle = BetterShape.Rectangle(short: 4, long: 10)









/*:
Switch Statements
-----
*/
let shape = Shape.Circle

switch shape {
  case .Circle:
    print("Found a circle")
    
  case .Square:
    print("Found a square")
    
  default:
    print("Found a different shape")
}








let response = (code: 401,
                error: NSError(domain: "org.familysearch.error", code: 0, userInfo: nil))


switch response {
  case (200...299, let error): print("Do success stuff")
  
  case (401, let error): print("Handle session expiration")
  
  default: print("Handle all other errors: \(response.error)")
}









//: Enums with Smarts

enum FancyShape {
  case Circle(radius: Double)
  case Rectangle(short: Int, long: Int)
  
  func area() -> Double {
    switch self {
      case .Circle (let radius): return PI * radius * radius
      case .Rectangle (let short, let long): return Double(short * long)
    }
  }
}

let c = FancyShape.Circle(radius: 3.0)

let areaOfC = c.area()

let r = FancyShape.Rectangle(short: 2, long: 8)

let areaOfR = r.area()


//: [Next](@next)

//: [Previous](@previous)

import Foundation

/*:
Error Handling
------
*/

func prevGetName(data:Dictionary<String, AnyObject>) -> String? {
  guard let person = data["person"] as? Dictionary<String, String> else {
    print("ERROR: Person object doesn't exist")
    return nil
  }
  
  guard let name = person["name"] else {
    print("ERROR: Name property doesn't exist")
    return nil
  }
  
  return name
}




//: GetName with Error Handling

enum DataError: ErrorType {
  case MissingPerson, MissingName
}

func getName(data:Dictionary<String, AnyObject>) throws -> String {
  guard let person = data["person"] as? Dictionary<String, String> else {
    throw DataError.MissingPerson
  }
  
  guard let name = person["name"] else {
    throw DataError.MissingName
  }
  
  return name
}








//: Parse the Data

let goodData = ["person": ["name": "Bob"]]
let badData = ["person": ["gender": "M"]]

// Good Data
do {
  let name = try getName(goodData)
} catch {
  let msg = "Error parsing data: \(error)"
}



// Bad Data
do {
  let name = try getName(badData)
} catch {
  let msg = "Error parsing data: \(error)"
}

//: [Next](@next)

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

print("\n\nParse Good Data")
do {
  print(try getName(goodData))
  
} catch {
  print("Error parsing data: \(error)")
}

print("\n\nParse Bad Data")
do {
  print(try getName(badData))
  
} catch {
  print("Error parsing data: \(error)")
}

//: [Next](@next)

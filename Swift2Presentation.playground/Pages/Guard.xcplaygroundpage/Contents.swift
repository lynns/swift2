//: [Previous](@previous)

import Foundation

//: Swift 1.2 Parsing Data

func getName(data:Dictionary<String, AnyObject>) -> String? {
  if let person = data["person"] as? Dictionary<String, String>,
         name = person["name"]
  {
    return name
  }
  
  return nil
}










//: Swift 2 Parsing with guard
func newGetName(data:Dictionary<String, AnyObject>) -> String? {
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









//: Parse the Data

let goodData = ["person": ["name": "Bob"]]
let badData = ["person": ["gender": "M"]]

print("\n\nParse using old method")
print(getName(goodData))
print(getName(badData))


print("\n\n\nParse using new method")
print(newGetName(goodData))
print(newGetName(badData))

//: [Next](@next)
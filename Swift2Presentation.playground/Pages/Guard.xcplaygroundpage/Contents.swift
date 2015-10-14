//: [Previous](@previous)

import Foundation

//: Swift 1.2 Parsing Data
//old way

func getName(data:Dictionary<String, AnyObject>) -> String? {
  if let person = data["person"] as? Dictionary<String, String>,
         name = person["name"]
  {
    return name
  }
  
  return nil
}





let goodData = ["person": ["name": "Bob"]]
let badData = ["person": ["gender": "M"]]

// parse name

getName(goodData)
getName(badData)




//: Swift 2 Parsing with guard
func betterGetName(data:Dictionary<String, AnyObject>) -> String? {
  guard let person = data["person"] as? Dictionary<String, String> else {
    print("ERROR: 'Person' property doesn't exist")
    return nil
  }
  
  guard let name = person["name"] else {
    print("ERROR: 'Name' property doesn't exist")
    return nil
  }
  
  return name
}









//: Parse the Data
print("\n\n\nParse using new method")
print(betterGetName(goodData))
print(betterGetName(badData))

//: [Next](@next)

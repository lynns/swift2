//: [Previous](@previous)

import Foundation

/*:
Closures & First class functions
-----
*/
func processResponse(response: String) -> String {
  let processed = "Handle response: \(response)"
  return processed
}


func makeRequest(url: String, responseHandler: (response: String) -> String) {
  //do your network stuff here
  responseHandler(response: "THE RESPONSE")
}

//
//// Pass existing function in
//
//let res = makeRequest("url", responseHandler: processResponse)
//
//
//// Pass anonymous function
//
//let res2 = makeRequest("url") { (response) -> String in
//  
//}











//: More Functions
let nums = [4, 2, 8, 3, 5]

//full syntax
let sort1 = nums.sort ({ (num1: Int, num2: Int) -> Bool in
  return num1 < num2
})

//shorter

let sort2 = nums.sort(<)







//: Chained functions
func combineDatePlace(date: String?, place: String?) -> String {
  let combined = [date, place].filter({ (val:String?) in
                                val != nil && val!.utf16.count > 0
                              })
                              .map({$0!})
                              .joinWithSeparator(", ")

  return combined
}

let combined = combineDatePlace("2 Jan 1999", place: "Salt Lake City")



//: [Next](@next)

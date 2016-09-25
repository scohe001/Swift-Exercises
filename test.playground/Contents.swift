//: Playground - noun: a place where people can play

import UIKit

/*
var fnames = ["Johnny", "Bobby", "Billy", "Jenny"]
var ages = [
    "Johnny" : 24,
    "Billy" : 15,
    "Bobby" : 8,
    "Jenny" : 19
]

fnames[1] = "test"

print(ages["Johnny"])
print("Hey there \(ages[fnames[2]]), how's your day been?")
*/



let emptyArray = [String]() //Without type is just `[]`
let emptyDictionary = [String : Int]() //Without type is `[:]`
var emptyVar = Int()

var optionalString: String? = "Hello"
print(optionalString == nil)

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}

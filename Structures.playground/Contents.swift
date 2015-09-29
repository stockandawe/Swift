//: Playground - noun: a place where people can play
// For a quick overview of classes v/s structures - https://goo.gl/fDyGtB

import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

struct Dude {
    var firstName: String
    var lastName: String
    
    // No initializer defined. All structures get a member-wise initializer by default
}

let p1 = Person(firstName: "Bob", lastName: "Birch")
let p2 = p1 // This is a pointer reference to p1

print("p1 is \(p1.firstName) \(p1.lastName), p2 is \(p2.firstName) \(p2.lastName)")

p1.firstName = "New"
p2.lastName = "Name"

print("p1 is \(p1.firstName) \(p1.lastName), p2 is \(p2.firstName) \(p2.lastName)")


var d1 = Dude(firstName: "Bob", lastName: "Birch")
var d2 = d1 // This is a copy of d1

print("d1 is \(d1.firstName) \(d1.lastName), d2 is \(d2.firstName) \(d2.lastName)")

d1.firstName = "New"
d1.lastName = "Name"

print("d1 is \(d1.firstName) \(d1.lastName), d2 is \(d2.firstName) \(d2.lastName)")

// All of Swift's built-in types (Array, String, etc) are defined as structures
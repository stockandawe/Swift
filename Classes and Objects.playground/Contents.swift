//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName: String
    var lastName: String
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func say(phrase: String) {
        print("\(firstName) \(lastName) says '\(phrase)'")
    }
    
    class func say(phrase: String) {
        print("...and the people say '\(phrase)'")
    }
}
let p1 = Person(firstName: "Foo", lastName: "Bar")
p1.say("let's learn some Swift!")

Person.say("Why not?")
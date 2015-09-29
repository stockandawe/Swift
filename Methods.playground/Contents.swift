//: Playground - noun: a place where people can play

import UIKit

class Person {
    var firstName: String = ""
    var lastName: String = ""
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func say(phrase: String) {
        print("\(self.firstName) \(self.lastName) says \(phrase)")
    }
    
    func say(phrase: String, times: Int) {
        for _ in 1...times {
            say(phrase)
        }
    }
}

let p = Person(firstName: "Alex", lastName: "Volmer")
p.say("Hi")
p.say("Hello", times: 5)
